package main

import (
	"crypto/tls"
	"fmt"
	httpHelper "github.com/gruntwork-io/terratest/modules/http-helper"
	"log"
	"testing"
	"time"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestEC2(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "./ec2",
	})
	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	instanceURL := terraform.Output(t, terraformOptions, "http://ginkgodev.com")
	tlsConfig := tls.Config{}
	maxRetries := 50
	timeBetweenRetries := 10 * time.Second
	if err := httpHelper.HttpGetWithRetryWithCustomValidationE(
		t, instanceURL, &tlsConfig, maxRetries, timeBetweenRetries, validate,
	); err != nil {
		log.Printf("error validating HTTP request: %v", err.Error())
	}
}

func validate(status int, body string) bool {
	fmt.Println(body)
	return status == 200
}
