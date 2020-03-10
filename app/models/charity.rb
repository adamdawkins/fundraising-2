# frozen_string_literal: true

class Charity < ApplicationRecord
  after_create :create_tenant

  private def create_tenant
    Apartment::Tenant.create subdomain
  end
end
