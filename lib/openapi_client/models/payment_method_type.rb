=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.9.1.20191223.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class PaymentMethodType
    ALIPAY = "ALIPAY".freeze
    ALIPAY_PAYSECURE_US = "ALIPAY_PAYSECURE_US".freeze
    ALIPAY_DOMESTIC = "ALIPAY_DOMESTIC".freeze
    APM = "APM".freeze
    CUP_DOMESTIC = "CUP_DOMESTIC".freeze
    DEBITDE = "DEBITDE".freeze
    EMI = "EMI".freeze
    GIROPAY = "GIROPAY".freeze
    IDEAL = "IDEAL".freeze
    INDIAWALLET = "INDIAWALLET".freeze
    KLARNA = "KLARNA".freeze
    KPS = "KPS".freeze
    NETBANKING = "NETBANKING".freeze
    PAYMENT_CARD = "PAYMENT_CARD".freeze
    PAYMENT_TOKEN = "PAYMENT_TOKEN".freeze
    PAYPAL = "PAYPAL".freeze
    SEPA = "SEPA".freeze
    SOFORT = "SOFORT".freeze
    WALLET = "WALLET".freeze
    WECHAT_DOMESTIC = "WECHAT_DOMESTIC".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PaymentMethodType.constants.select { |c| PaymentMethodType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PaymentMethodType" if constantValues.empty?
      value
    end
  end
end
