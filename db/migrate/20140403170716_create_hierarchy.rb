class CreateHierarchy < ActiveRecord::Migration
 ''' def change
    create_table :hierarchies do |t|
    end
  end'''

	def self.up
		g1=Cat1.create(:name => "Men")
		g2=Cat1.create(:name => "Women")
		g3=Cat1.create(:name => "Kids")
		
		a1=Cat2.create(:name => "Clothing" , :cat1_id => g1.id)
		a2=Cat2.create(:name => "Footwear" , :cat1_id => g1.id)
		a3=Cat2.create(:name => "Winterwear" , :cat1_id => g1.id)
		a4=Cat2.create(:name => "Accessories" , :cat1_id => g1.id)
		a5=Cat2.create(:name => "Clothing" , :cat1_id => g2.id)
		a6=Cat2.create(:name => "Footwear" , :cat1_id => g2.id)
		a7=Cat2.create(:name => "Winterwear" , :cat1_id => g2.id)
		a8=Cat2.create(:name => "Accessories" , :cat1_id => g2.id)
		a9=Cat2.create(:name => "BoysApparel" , :cat1_id => g3.id)
		a10=Cat2.create(:name => "GirlsApparel" , :cat1_id => g3.id)
		a11=Cat2.create(:name => "GirlsFootwear" , :cat1_id => g3.id)
		a12=Cat2.create(:name => "BoysFootwear" , :cat1_id => g3.id)



		Cat3.create(:name => "Jeans" , :cat2_id => a1.id)
		Cat3.create(:name => "Shirts" , :cat2_id => a1.id)
		Cat3.create(:name => "Trousers" , :cat2_id => a1.id)
		Cat3.create(:name => "Suits" , :cat2_id => a1.id)
		Cat3.create(:name => "Kurtas" , :cat2_id => a1.id)

		Cat3.create(:name => "CasualShoes" , :cat2_id => a2.id)
		Cat3.create(:name => "FormalShoes" , :cat2_id => a2.id)
		Cat3.create(:name => "SportShoes" , :cat2_id => a2.id)
		Cat3.create(:name => "Sandals" , :cat2_id => a2.id)
		Cat3.create(:name => "Slippers" , :cat2_id => a2.id)


		Cat3.create(:name => "Cardigans" , :cat2_id => a3.id)
		Cat3.create(:name => "Jackets" , :cat2_id => a3.id)
		Cat3.create(:name => "Pullovers" , :cat2_id => a3.id)
		Cat3.create(:name => "Sweatshirts" , :cat2_id => a3.id)

		Cat3.create(:name => "Chains" , :cat2_id => a4.id)
		Cat3.create(:name => "Bracelets" , :cat2_id => a4.id)
		Cat3.create(:name => "Cufflinks" , :cat2_id => a4.id)
		Cat3.create(:name => "WristBands" , :cat2_id => a4.id)

Cat3.create(:name => "Dresses",   :cat2_id => a5.id)
    Cat3.create(:name => "Shirts",  :cat2_id => a5.id)
    Cat3.create(:name => "ShrugsnJackets",  :cat2_id => a5.id)
    Cat3.create(:name => "Jeans",  :cat2_id => a5.id)
    Cat3.create(:name => "ShortsnSkirts",   :cat2_id => a5.id)
    Cat3.create(:name => "LeggingsnCapris",   :cat2_id => a5.id)
    Cat3.create(:name => "PantsnTrousers",   :cat2_id => a5.id)
   
    Cat3.create(:name => "Sandals",   :cat2_id => a6.id)
    Cat3.create(:name => "Heels",  :cat2_id => a6.id)
    Cat3.create(:name => "Flats",   :cat2_id => a6.id)
    Cat3.create(:name => "CasualShoes",   :cat2_id => a6.id)
    Cat3.create(:name => "SportsShoes",   :cat2_id => a6.id)
    Cat3.create(:name => "Slippers",  :cat2_id => a6.id)
    Cat3.create(:name => "Boots",   :cat2_id => a6.id)
   
    Cat3.create(:name => "Sweaters",   :cat2_id => a7.id)
    Cat3.create(:name => "Jackets",  :cat2_id => a7.id)
    Cat3.create(:name => "Others",  :cat2_id => a7.id)
   
    Cat3.create(:name => "BagsnWallets",   :cat2_id => a8.id)
    Cat3.create(:name => "Cosmetics",   :cat2_id => a8.id)
    Cat3.create(:name => "Jewellery",   :cat2_id => a8.id)
    Cat3.create(:name => "Sunglasses",   :cat2_id => a8.id)
   
    Cat3.create(:name => "Watches",   :cat2_id => a8.id)


		Cat3.create(:name => "Shirts" , :cat2_id => a9.id)
		Cat3.create(:name => "Shorts" , :cat2_id => a9.id)
		Cat3.create(:name => "Dungarees" , :cat2_id => a9.id)
		Cat3.create(:name => "Combosets" , :cat2_id => a9.id)

		Cat3.create(:name => "Shirts" , :cat2_id => a10.id)
		Cat3.create(:name => "Shorts" , :cat2_id => a10.id)
		Cat3.create(:name => "Skirts" , :cat2_id => a10.id)
		Cat3.create(:name => "Combosets" , :cat2_id => a10.id)

		Cat3.create(:name => "CasualShoes" , :cat2_id => a11.id)
		Cat3.create(:name => "SchoolShoes" , :cat2_id => a11.id)
		Cat3.create(:name => "SportShoes" , :cat2_id => a11.id)
		Cat3.create(:name => "Sandals" , :cat2_id => a11.id)
		Cat3.create(:name => "Slippers" , :cat2_id => a11.id)

		Cat3.create(:name => "CasualShoes" , :cat2_id => a12.id)
		Cat3.create(:name => "SchoolShoes" , :cat2_id => a12.id)
		Cat3.create(:name => "Bellies" , :cat2_id => a12.id)
		Cat3.create(:name => "Sandals" , :cat2_id => a12.id)
		Cat3.create(:name => "Slippers" , :cat2_id => a12.id)


end
end
