# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Favourite.destroy_all
AreaConcern.destroy_all
FormulaConcern.destroy_all
FormulaIngredient.destroy_all
IngredientConcern.destroy_all
Ingredient.destroy_all
Formula.destroy_all
User.destroy_all
Category.destroy_all
Area.destroy_all
Concern.destroy_all


users = User.create([
    { username: 'Song', password: "321", email: "song@test.com"},
    { username: 'Minha', password: "321", email: "minha@test.com"},
    { username: 'Saphie', password: "321", email: "saphie@test.com"}
  ])

ingredients = Ingredient.create([
    {name:'Shea Butter' , scientific_name:'Vitellaria paradoxa', image:'http://dg.lnwfile.com/324yi4.jpg' , category:'Butter' , description: 'Shea Butter is extracted from the Kartie tree which predominantly grows in Ghana. This butter is known for its moisturising properties', suited_formulas:'Lip care, hair care, body creams, body scrubs, balms.'},
    {name: 'Almond Oil' , scientific_name: 'Prunus dulcis oil', image: 'https://cdn.pixabay.com/photo/2018/05/17/12/31/almond-3408470_960_720.jpg' , category:'Carrier Oil'  , description: 'Almond oil is one of the best sources of vitamin E. This oil is great for skin elasticity and a youthful apperance. Great for hair care',suited_formulas:'Lip balms, hair oil, hair conditioners, hair masks, scrubs, body butters, face creams, face serums.' },
    {name: 'Argan Oil', scientific_name: 'Argania spinosa kernel oil' , image: 'https://media.istockphoto.com/photos/argan-seeds-for-the-production-of-oil-picture-id865310964?k=6&m=865310964&s=612x612&w=0&h=VuYnM7ini-pYy_JDmhc61N2HeXIMnxz7ALqduFptW4w=', category:'Carrier Oil'  , description: 'Oil is derived from the argan nut found mainly in Morocco. Great for hair and skin',suited_formulas:'Face and neck prodcuts, hair care products.'},
    {name: 'Rose Water', scientific_name: 'Rosa damascena distillate', image:'https://images.unsplash.com/photo-1548015461-1e85b2db2b12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80' , category:'Hydrosol'  , description:'Rose water is a great alternative to distilled water. It is very gentle and rejuvenating',suited_formulas: 'Toners, mists, cleansers, shampoos, masks, creams'  },
    {name: 'Witch Hazel', scientific_name: 'Hamamelis Virginiana distillate', image:'https://www.maxpixel.net/static/photo/1x/Witch-Hazel-Yellow-Flower-Peanut-Flower-3123467.jpg' , category: 'Hydrosol' , description:'Historically used to treat burns and injuries, witch hazel has great antibacterial properties',suited_formulas: 'Toners, mists, cleansers, shampoos, masks, creams.' },
    {name: 'Aloe Vera', scientific_name:'Aloe barbadensis leaf extract' , image: 'https://www.maxpixel.net/static/photo/1x/Plant-Life-Bless-You-Aloe-Aloe-Vera-2163120.jpg', category: 'Active Botanical' , description: 'Aloe vera is great for soothing skin. Great anti-bacterial properties',suited_formulas: 'Toners, gels, creams, shower gel, eye gels, hair masks.' },
    {name: 'Honey', scientific_name:'Apis mellifera' , image:'https://www.maxpixel.net/static/photo/1x/Beehive-Honey-Bees-Honeycomb-Honey-Bees-Combs-345628.jpg' , category: 'Humectant' , description:'Honey is a humectant which means it attract and traps moisture in your skin and hair.', suited_formulas: 'Face masks, hair masks.' },
    {name: 'Activated Charcoal', scientific_name: 'Active charcoal', image:'https://farm5.staticflickr.com/4791/25840116007_acafaa5710_b.jpg' , category:'Powder'  , description:'Very absorbent and helps to clean the skin', suited_formulas: 'Face masks, body masks, hair masks, cleansing balms' },
    {name: 'Bentonite Clay', scientific_name: 'Montmorillonite', image:'https://cdn.shopify.com/s/files/1/0067/3362/products/Illite_clay2_sm_1024x1024_3b96653e-c7ce-4ca2-bea7-88fa02d57a5d_grande.jpeg?326', category: 'Clay' , description:'Bentonite clay is great for detoxifying. It draws out metals and toxins in the skin and hair', suited_formulas:'Face masks, body masks, hair masks, cleansing balms' },
    {name: 'Coconut Oil', scientific_name:'Cocos nuciferus oil' , image:'https://static01.nyt.com/images/2015/12/22/health/well_coconut/well_coconut-articleLarge.jpg?quality=90&auto=webp' , category:'Carrier oil'  , description:'Great moisturising effect, makes a good base for many products', suited_formulas: 'Creams, lip care, body butters, hair masks, face masks, body scrubs' },
    {name:'Rhassoul clay', scientific_name:'Rhassoul', image:'https://i.etsystatic.com/14618399/r/il/9a8c3c/1162469620/il_794xN.1162469620_oi5p.jpg' , category:'Clay', description: 'Rhassoul is a reddish brown clay that has strong cleansing properties. It is high in magnesium, potassium and calcium.', suited_formulas:'Face masks,hair masks,hair cleansers'},
    {name:'Almond meal' , scientific_name:'Prunus amygdalus powder', image:'https://cdn.shopify.com/s/files/1/2483/3766/products/NAKED_FOODS_ECOMM_DAY2_75_1bce7069-9f77-4953-b12b-805a1041ed5e_1280x1280.jpg?v=1523243436' , category:'Exfoliant' , description: 'Almond meal has a soft powdery texture which makes it idea for gentle exfoliation', suited_formulas:'face polishes, face scrubs, body scrubs'},
    {name:'Mineral Salts' , scientific_name:'Sodium chloride', image:'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pinch-himalayan-pink-salt-on-wooden-rustic-table-royalty-free-image-611067718-1552314749.jpg' , category:'Exfoliant' , description: 'Salts such as himalayan, dead sea, and conrnish salt contain minerals that are excellent for soothing the skin.', suited_formulas:'Body scrubs, hand and foot scrubs'},
    {name:'Rapadura sugar' , scientific_name:'Sucrose (rapadura)', image:'https://www.divinekarts.com/wp-content/uploads/2018/12/brown-sugar.jpg' , category:'Exfoliant' , description: 'A soft sugar which is rich in minerals contains properties which dissolves the bonds between dead skin cells which in turn encourages skin rejuvenation.', suited_formulas:'facial scrubs, body scrubs, hand and foot scrubs'},
    {name:'Coffee grounds' , scientific_name:'Coffea', image:'https://i.ytimg.com/vi/xIBQGBYrbb8/maxresdefault.jpg' , category:'Exfoliant' , description: 'Coffee is packed with antioxidants that can help fight skin damage. Is fantastic for refreshing the skin and energising it', suited_formulas:'Face scrub, body scrub, hand and foot scrub'},
    {name:'Lavender essential oil' , scientific_name:'Lavandula angustifolia', image:'https://www.stayathomemum.com.au/cache/860x380-0/wp-content/uploads/2011/08/lavender-oil-1-e1478324560879.jpg' , category:'Essential oil' , description: 'Beautiful aroma, lavender oil has great regenerative properties, not to mention antioxidant and anti-inflammatory effects', suited_formulas:'face care, body care, hair care'},
    {name:'Peppermint essential oil' , scientific_name:'Mentha piperita', image:'https://davinawellness.com/wp-content/uploads/2016/07/pepperint-oil-1030x687.jpg' , category:'Essential oil' , description: 'This essential oil has a fantastic aroma, contains antimicrobial properties, great for targeting cellulite, anti-aging and even oily skin and hair', suited_formulas:'face care, hair care, body care'},
    {name:'Jojoba Oil' , scientific_name:'Simmondsia chinensis seed oil', image:'https://reportshealthcare.com/wp-content/uploads/2018/04/Jojoba-oil-benefits-1140x700.jpg' , category:'Carrier oil' , description: 'Jojoba oil has the closest structural composition to our natural sebum. It is incredibly moisturising. Has anti-inflammatory, anti-microbial and anti-fungal effects. Penetrates into the skin and can regulate sebum production', suited_formulas:'moisturisers, cleansers, conditioners, scrubs, masks'},
    {name:'Mango butter' , scientific_name:'Mangifera indica seed butter', image:'https://www.brambleberry.com/dw/image/v2/BCPL_PRD/on/demandware.static/-/Sites-brambleberry-master-catalog/default/dwb33b43a6/images/large/ingredients/butters/main/MangoButter_OIL8_Main_2018.07.BrambleBerry.Brent-077-Edit.jpg?sw=1000&sh=1000&sm=fit' , category:'Butter' , description: 'Mango butter is excellent for softening the skin and as a fast absorption rate. It is rich in vitamin E. Known to reduce the signs of aging.', suited_formulas:'Lip balms, body butters, scrubs, creams, hair care'},
    {name:'Rosemary essential oil' , scientific_name:'Rosmarinus officinalis leaf oil', image:'http://sknatural.com/wp-content/uploads/2018/12/Rosemary1.jpg' , category:'Essential oil' , description: 'Fresh herbaceous aroma. Has anti-oxidant, anti-microbial and anti-inflammatory effects', suited_formulas:'Face care, hair care, body care'},
    {name:'Cucumber', scientific_name:'Cucumis sativus extract', image:'https://www.rare-beauty.co.uk/wp-content/uploads/2018/07/7-Days-%E2%80%93-7-Kg-Less-Cucumber-Diet-1-1.jpg' , category:'Active botanical' , description: 'Used for many skin care problems, helps with soothing irritated skin. Has healing, cooling and soothing properties', suited_formulas:'face toner,face mist, face cleansers, gels, shampoos, creams'}
])

areas = Area.create([
    {name: 'Skin care'},
    {name: 'Body care'},
    {name: 'Hair care'}
])

categories = Category.create([
    {name:'Face Cleanser', area_id:areas[0].id},
    {name:'Face Toner', area_id:areas[0].id},
    {name:'Face Scrub', area_id:areas[0].id},
    {name:'Face Moisturiser', area_id:areas[0].id},
    {name:'Face Serum', area_id:areas[0].id},
    {name:'Make-up', area_id:areas[0].id},
    {name:'Face Mask', area_id:areas[0].id},
    {name:'Eye Care', area_id:areas[0].id},
    {name:'Lip Care', area_id:areas[0].id},
    {name:'Sun Care', area_id:areas[0].id},
    {name:'Body Moisturiser', area_id:areas[1].id},
    {name:'Body Scrub', area_id:areas[1].id},
    {name:'Shower Gel', area_id:areas[1].id},
    {name:'Body Oil', area_id:areas[1].id},
    {name:'Soap', area_id:areas[1].id},
    {name:'Hand Care', area_id:areas[1].id},
    {name:'Foot Care', area_id:areas[1].id},
    {name:'Shampoo', area_id:areas[2].id},
    {name:'Hair Conditioner', area_id:areas[2].id},
    {name:'Leave-in Conditioner', area_id:areas[2].id},
    {name:'Hair Mask', area_id:areas[2].id},
    {name:'Hair Oil', area_id:areas[2].id},
    {name:'Hair Gel', area_id:areas[2].id}
])

concerns = Concern.create([
    {name:'Hydration'}, 
    {name:'Anti-Aging' },
    {name: 'Anti-Wrinkle' },
    {name: 'Firming'},
    {name: 'Restoring'},
    {name: 'Glow'},
    {name: 'Brightening'},
    {name: 'Revitalising'},
    {name: 'Dull Skin'},
    {name: 'Oily Skin'},
    {name: 'Normal Skin'},
    {name: 'Combination Skin'},
    {name: 'Dark under eyes'},
    {name: 'Puffy under eyes'},
    {name: 'Dark spots'},
    {name: 'Uneven skin tones'},
    {name: 'UV protection'},
    {name: 'Soothing'},
    {name: 'Calming'},
    {name: 'Sensitive Skin'},
    {name: 'Hair Growth'},
    {name: 'Hair Loss'},
    {name: 'Dandruff'},
    {name: 'Dry Scalp'},
    {name: 'Rejuvinating'},
    {name: 'Sensitive scalp'},
    {name: 'Oily Hair'},
    {name: 'Dry Hair'},
    {name: 'Damaged Hair'},
    {name: 'Colour Protection'},
    {name: 'Shine'},
    {name: 'Chapped Lips'},
    {name: 'Anti-Cellulite'},
    {name: 'Stretch Marks'},
    {name: 'Scars'},
    {name: 'Moisturising'},
    {name: 'Acne'},
    {name: 'Eczema'},
    {name: 'Anti-Bacterial'},
    {name: 'Psoriasis'},
    {name: 'Anti-Inflammatory'},
    {name: 'Healing'},
    {name: 'Dry Skin'},
    {name: 'Detoxifying'}
])

area_concerns = AreaConcern.create([
    {area_id: areas[0].id, concern_id: concerns[0].id},
    {area_id:areas[1].id, concern_id:concerns[0].id},
    {area_id:areas[2].id, concern_id:concerns[0].id},
    {area_id:areas[0].id, concern_id:concerns[1].id},
    {area_id:areas[0].id, concern_id:concerns[2].id},
    {area_id:areas[0].id, concern_id:concerns[3].id},
    {area_id:areas[1].id, concern_id:concerns[3].id},
    {area_id:areas[0].id, concern_id:concerns[4].id},
    {area_id:areas[1].id, concern_id:concerns[4].id},
    {area_id:areas[2].id, concern_id:concerns[4].id},
    {area_id:areas[0].id, concern_id:concerns[5].id},
    {area_id:areas[2].id, concern_id:concerns[5].id},
    {area_id:areas[0].id, concern_id:concerns[6].id},
    {area_id:areas[0].id, concern_id:concerns[7].id},
    {area_id:areas[0].id, concern_id:concerns[8].id},
    {area_id:areas[1].id, concern_id:concerns[8].id},
    {area_id:areas[0].id, concern_id:concerns[9].id},
    {area_id:areas[1].id, concern_id:concerns[9].id},
    {area_id:areas[0].id, concern_id:concerns[10].id},
    {area_id:areas[1].id, concern_id:concerns[10].id},
    {area_id:areas[0].id, concern_id:concerns[11].id},
    {area_id:areas[1].id, concern_id:concerns[11].id},
    {area_id:areas[0].id, concern_id:concerns[12].id},
    {area_id:areas[1].id, concern_id:concerns[12].id},
    {area_id:areas[0].id, concern_id:concerns[13].id},
    {area_id:areas[0].id, concern_id:concerns[14].id},
    {area_id:areas[0].id, concern_id:concerns[15].id},
    {area_id:areas[1].id, concern_id:concerns[15].id},
    {area_id:areas[0].id, concern_id:concerns[16].id},
    {area_id:areas[1].id, concern_id:concerns[16].id},
    {area_id:areas[0].id, concern_id:concerns[17].id},
    {area_id:areas[1].id, concern_id:concerns[17].id},
    {area_id:areas[2].id, concern_id:concerns[17].id},
    {area_id:areas[0].id, concern_id:concerns[18].id},
    {area_id:areas[1].id, concern_id:concerns[18].id},
    {area_id:areas[2].id, concern_id:concerns[18].id},
    {area_id:areas[0].id, concern_id:concerns[19].id},
    {area_id:areas[1].id, concern_id:concerns[19].id},
    {area_id:areas[0].id, concern_id:concerns[20].id},
    {area_id:areas[1].id, concern_id:concerns[20].id},
    {area_id:areas[2].id, concern_id:concerns[21].id},
    {area_id:areas[2].id, concern_id:concerns[22].id},
    {area_id:areas[2].id, concern_id:concerns[23].id},
    {area_id:areas[2].id, concern_id:concerns[24].id},
    {area_id:areas[0].id, concern_id:concerns[25].id},
    {area_id:areas[1].id, concern_id:concerns[25].id},
    {area_id:areas[2].id, concern_id:concerns[25].id},
    {area_id:areas[2].id, concern_id:concerns[26].id},
    {area_id:areas[2].id, concern_id:concerns[27].id},
    {area_id:areas[2].id, concern_id:concerns[28].id},
    {area_id:areas[2].id, concern_id:concerns[29].id},
    {area_id:areas[2].id, concern_id:concerns[30].id},
    {area_id:areas[2].id, concern_id:concerns[31].id},
    {area_id:areas[0].id, concern_id:concerns[32].id},
    {area_id:areas[1].id, concern_id:concerns[33].id},
    {area_id:areas[1].id, concern_id:concerns[34].id},
    {area_id:areas[0].id, concern_id:concerns[35].id},
    {area_id:areas[1].id, concern_id:concerns[35].id},
    {area_id:areas[0].id, concern_id:concerns[36].id},
    {area_id:areas[1].id, concern_id:concerns[36].id},
    {area_id:areas[2].id, concern_id:concerns[36].id},
    {area_id:areas[0].id, concern_id:concerns[37].id},
    {area_id:areas[1].id, concern_id:concerns[37].id},
    {area_id:areas[0].id, concern_id:concerns[38].id},
    {area_id:areas[1].id, concern_id:concerns[38].id},
    {area_id:areas[0].id, concern_id:concerns[39].id},
    {area_id:areas[1].id, concern_id:concerns[39].id},
    {area_id:areas[2].id, concern_id:concerns[39].id},
    {area_id:areas[0].id, concern_id:concerns[40].id},
    {area_id:areas[1].id, concern_id:concerns[40].id}
])

ingredient_concerns = IngredientConcern.create([
    {ingredient_id:ingredients[0].id, concern_id:concerns[41].id},
    {ingredient_id:ingredients[0].id  ,concern_id:concerns[33].id },
    {ingredient_id:ingredients[0].id  ,concern_id:concerns[34].id },
    {ingredient_id:ingredients[0].id  ,concern_id:concerns[31].id },
    {ingredient_id:ingredients[0].id  ,concern_id:concerns[35].id },
    {ingredient_id:ingredients[1].id  ,concern_id:concerns[1].id },
    {ingredient_id:ingredients[1].id  ,concern_id:concerns[14].id },
    {ingredient_id:ingredients[1].id  ,concern_id:concerns[24].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[36].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[35].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[37].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[39].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[40].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[2].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[42].id },
    {ingredient_id:ingredients[2].id  ,concern_id:concerns[24].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[19].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[24].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[0].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[17].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[18].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[36].id },
    {ingredient_id:ingredients[3].id  ,concern_id:concerns[28].id },
    {ingredient_id:ingredients[4].id  ,concern_id:concerns[40].id },
    {ingredient_id:ingredients[4].id  ,concern_id:concerns[38].id },
    {ingredient_id:ingredients[4].id  ,concern_id:concerns[37].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[40].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[38].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[0].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[24].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[17].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[18].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[36].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[37].id },
    {ingredient_id:ingredients[5].id  ,concern_id:concerns[23].id },
    {ingredient_id:ingredients[6].id  ,concern_id:concerns[38].id },
    {ingredient_id:ingredients[6].id  ,concern_id:concerns[19].id },
    {ingredient_id:ingredients[6].id  ,concern_id:concerns[36].id },
    {ingredient_id:ingredients[6].id  ,concern_id:concerns[1].id },
    {ingredient_id:ingredients[7].id  ,concern_id:concerns[43].id },
    {ingredient_id:ingredients[7].id  ,concern_id:concerns[36].id },
    {ingredient_id:ingredients[7].id  ,concern_id:concerns[9].id },
    {ingredient_id:ingredients[7].id  ,concern_id:concerns[40].id },
    {ingredient_id:ingredients[8].id  ,concern_id:concerns[9].id },
    {ingredient_id:ingredients[8].id  ,concern_id:concerns[11].id },
    {ingredient_id:ingredients[8].id  ,concern_id:concerns[8].id },
    {ingredient_id:ingredients[8].id  ,concern_id:concerns[17].id },
    {ingredient_id:ingredients[8].id  ,concern_id:concerns[43].id },
    {ingredient_id:ingredients[9].id  ,concern_id:concerns[35].id },
    {ingredient_id:ingredients[9].id  ,concern_id:concerns[40].id },
    {ingredient_id:ingredients[10].id  ,concern_id:concerns[40].id },
    {ingredient_id:ingredients[10].id  ,concern_id:concerns[9].id },
    {ingredient_id:ingredients[10].id  ,concern_id:concerns[33].id },
    {ingredient_id:ingredients[11].id  ,concern_id:concerns[19].id },
    {ingredient_id:ingredients[12].id  ,concern_id:concerns[17].id },
    {ingredient_id:ingredients[13].id  ,concern_id:concerns[7].id },
    {ingredient_id:ingredients[14].id  ,concern_id:concerns[1].id },
    {ingredient_id:ingredients[14].id  ,concern_id:concerns[2].id },
    {ingredient_id:ingredients[14].id  ,concern_id:concerns[7].id },
    {ingredient_id:ingredients[14].id  ,concern_id:concerns[33].id },
    {ingredient_id:ingredients[15].id  ,concern_id:concerns[37].id },
    {ingredient_id:ingredients[15].id  ,concern_id:concerns[35].id },
    {ingredient_id:ingredients[16].id  ,concern_id:concerns[37].id },
    {ingredient_id:ingredients[16].id  ,concern_id:concerns[35].id },
    {ingredient_id:ingredients[16].id  ,concern_id:concerns[19].id },
    {ingredient_id:ingredients[17].id  ,concern_id:concerns[33].id },
    {ingredient_id:ingredients[17].id  ,concern_id:concerns[32].id },
    {ingredient_id:ingredients[18].id  ,concern_id:concerns[32].id },
    {ingredient_id:ingredients[18].id  ,concern_id:concerns[2].id },
    {ingredient_id:ingredients[19].id  ,concern_id:concerns[37].id },
    {ingredient_id:ingredients[19].id  ,concern_id:concerns[35].id },
    {ingredient_id:ingredients[20].id  ,concern_id:concerns[17].id },
    {ingredient_id:ingredients[20].id  ,concern_id:concerns[18].id },
    {ingredient_id:ingredients[20].id  ,concern_id:concerns[19].id },
    {ingredient_id:ingredients[20].id  ,concern_id:concerns[0].id }
])


formulas = Formula.create([
    {title: 'Deep Cleansing Mud Mask' ,image:'https://helloglow.co/wp-content/uploads/2017/07/Mud-Mask-1.jpg' ,description:'This mask is a great option for detoxifying and cleansing the face. The bentonite clay will help draw out toxins in the skin while the honey will premote skin hydration.' ,directions:'Mix all three ingredients together until it forms a thick paste, use more or less. Apply it to the face and leave to harden for 10 -15 minutes. Wash off with warm water' ,user_id:users[2].id , category_id:categories[6].id },
    {title: 'Aloe Vera Toner',image:'https://i2.wp.com/jenniraincloud.com/wp-content/uploads/2017/08/Aloe-Cucumber-Toner-2.jpg?w=1000&ssl=1' ,description:'Soothing Face toner, it will hydrate and reduce puffiness in the face. Great for morning and night' ,directions:'Use a funnel to pour all of the ingredients into a spray bottle, shake well before using' ,user_id:users[2].id , category_id:categories[1].id },
    {title: 'Coconut Honey Hair Mask ',image:'https://i.pinimg.com/564x/14/a7/30/14a730749071dcb73359de53dec778cd.jpg' ,description: 'This mask is great for repairing damaged hair. The coconut will replenish and moisturise the hair while the honey will draw in even more moisture.',directions:'Add all the ingredients into a bowl mix well. Apply the mixture generously into the hair. Leave for at least 15 minutes. For best results cover with a showercap to trap your natural heat.' ,user_id:users[0].id , category_id:categories[20].id },
    {title: 'Whipped body butter' ,image:'https://i.pinimg.com/564x/a3/d6/c1/a3d6c11d491c97824323cfa5ee791395.jpg' ,description:'This is a rich body butter packed with many moisturising properties' ,directions:'Soften the shea butter in the microwave or on the stove until the consistency is like cookie dough. Add all the ingredients into a bowl and mix together with an electric whisk until the mixture gives you soft peaks. Store in a container and use as a daily body cream' ,user_id:users[1].id , category_id:categories[10].id }

])


formula_ingredients = FormulaIngredient.create([
    {formula_id:formulas[0].id , ingredient_id:ingredients[3].id ,percentage:30 },
    {formula_id:formulas[0].id , ingredient_id:ingredients[8].id ,percentage:70 },
    {formula_id:formulas[0].id , ingredient_id:ingredients[6].id ,percentage:10 },
    {formula_id:formulas[1].id , ingredient_id:ingredients[3].id ,percentage:15 },
    {formula_id:formulas[1].id , ingredient_id:ingredients[4].id ,percentage:45 },
    {formula_id:formulas[1].id , ingredient_id:ingredients[5].id ,percentage:40 },
    {formula_id:formulas[2].id , ingredient_id:ingredients[6].id ,percentage:30 },
    {formula_id:formulas[2].id , ingredient_id:ingredients[9].id ,percentage:70 },
    {formula_id:formulas[3].id , ingredient_id:ingredients[9].id ,percentage:20 },
    {formula_id:formulas[3].id , ingredient_id:ingredients[0].id ,percentage:60 },
    {formula_id:formulas[3].id , ingredient_id:ingredients[1].id ,percentage:20 }
])


formula_concerns = FormulaConcern.create([
   {formula_id:formulas[0].id, concern_id:concerns[43].id},
   {formula_id:formulas[0].id, concern_id:concerns[0].id},
   {formula_id:formulas[0].id, concern_id:concerns[3].id},
   {formula_id:formulas[0].id, concern_id:concerns[36].id},
   {formula_id:formulas[1].id, concern_id:concerns[0].id},
   {formula_id:formulas[1].id, concern_id:concerns[1].id},
   {formula_id:formulas[1].id, concern_id:concerns[3].id},
   {formula_id:formulas[1].id, concern_id:concerns[7].id},
   {formula_id:formulas[1].id, concern_id:concerns[19].id},
   {formula_id:formulas[1].id, concern_id:concerns[40].id},
   {formula_id:formulas[1].id, concern_id:concerns[17].id},
   {formula_id:formulas[1].id, concern_id:concerns[18].id},
   {formula_id:formulas[2].id, concern_id:concerns[0].id},
   {formula_id:formulas[2].id, concern_id:concerns[4].id},
   {formula_id:formulas[2].id, concern_id:concerns[27].id},
   {formula_id:formulas[2].id, concern_id:concerns[28].id},
   {formula_id:formulas[2].id, concern_id:concerns[35].id},
   {formula_id:formulas[3].id, concern_id:concerns[35].id},
   {formula_id:formulas[3].id, concern_id:concerns[42].id},
   {formula_id:formulas[3].id, concern_id:concerns[8].id},
   {formula_id:formulas[3].id, concern_id:concerns[10].id}
])


favourites = Favourite.create([
{user_id:users[0].id, formula_id:formulas[2].id},
{user_id:users[0].id, formula_id:formulas[3].id},
{user_id:users[1].id, formula_id:formulas[1].id},
{user_id:users[2].id, formula_id:formulas[0].id},
{user_id:users[2].id, formula_id:formulas[2].id}
])







