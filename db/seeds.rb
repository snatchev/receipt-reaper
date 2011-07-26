category_names = ["Accounting fee",
 "Advertising",
 "Bank charges",
 "Commissions and sales expenses",
 "Consultation expenses",
 "Continuing professional education",
 "Contract labor",
 "Credit and collection fees",
 "Delivery charges",
 "Dues and subscriptions",
 "Employee benefit programs",
 "Equipment rentals",
 "Factory expenses",
 "Insurance",
 "Interest paid",
 "Internet subscriptions, domain names, and hosting",
 "Laundry",
 "Legal fees",
 "Licenses, software",
 "Maintenance and repairs",
 "Office expenses and supplies",
 "Pension and profit-sharing plans",
 "Postage",
 "Print and copy",
 "Professional development and training",
 "Professional fees",
 "Promotion",
 "Rent",
 "Salaries, wages, and other compensation",
 "Security",
 "Small tools and equipment",
 "Software",
 "Supplies",
 "Taxes",
 "Telephone",
 "Trade discounts",
 "Travel",
 "Utilities",
 "Other"]

category_names.each do |name|
  Category.create(:name => name, :group => 'tax')
end
