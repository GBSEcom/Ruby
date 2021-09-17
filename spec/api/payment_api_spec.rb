=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.4.0.20210824.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::PaymentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::PaymentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentApi' do
    it 'should create an instance of PaymentApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::PaymentApi)
    end
  end

  # unit tests for finalize_secure_transaction
  # Update a 3DSecure or UnionPay payment and continue processing.
  # Use this to handle a 3DSecure redirect response or UnionPay authentication, updating the transaction and continuing processing.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param transaction_id Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
  # @param authentication_update_request Accepted request types: Secure3DAuthenticationUpdateRequest, Secure3D10AuthenticationUpdateRequest, Secure3D21AuthenticationUpdateRequest and UnionPayAuthenticationUpdateRequest.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @return [TransactionResponse]
  describe 'finalize_secure_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_primary_transaction
  # Generate a primary transaction.
  # Use this to originate a financial transaction like a sale, preauthorization, or credit.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param primary_transaction Accepted request types: AliPaySaleTransaction, ChinaPnRSaleTransaction, PaymentCardCreditTransaction, PaymentCardForcedTicketTransaction, PaymentCardSaleTransaction, PaymentCardPreAuthTransaction, PaymentCardPayerAuthTransaction, PaymentCardDisbursementTransaction, PaymentTokenCreditTransaction, PaymentTokenPreAuthTransaction, PaymentTokenSaleTransaction, PaymentTokenDisbursementTransaction, PaypalCreditTransaction, SepaSaleTransaction, SepaCreditTransaction, WalletSaleTransaction, and WalletPreAuthTransaction, PaymentDeviceSaleTransaction, PaymentDevicePreAuthTransaction, PaymentDeviceCreditTransaction, PaymentDeviceDisbursementTransaction, AchPreAuthTransaction, AchSaleTransaction, AchCreditTransaction.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @return [TransactionResponse]
  describe 'submit_primary_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for submit_secondary_transaction
  # Perform a secondary transaction.
  # Use this to perform a void, postAuth or return secondary transaction. Partial postAuths and returns are allowed.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param transaction_id Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
  # @param secondary_transaction Accepted request types: PostAuthTransaction, VoidTransaction, VoidPreAuthTransactions, ReturnTransaction, AchPostAuthTransaction, AchVoidTransaction, AchReturnTransaction and PreAuthSecondaryTransaction.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
  # @return [TransactionResponse]
  describe 'submit_secondary_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for transaction_inquiry
  # Retrieve the state of a transaction.
  # Use this query to get the current state of an existing transaction.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param transaction_id Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
  # @return [TransactionResponse]
  describe 'transaction_inquiry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
