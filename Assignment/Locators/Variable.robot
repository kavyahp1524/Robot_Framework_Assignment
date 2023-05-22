
*** Variables ***

${URL_Amz}            https://www.amazon.in/
${Browser}            chrome

### Home Page ###
${Today'sDeal}        xpath://*[contains(text(),'Today’s Deals')]
${DealOfDay}          xpath://*[@class='a-unordered-list a-nostyle a-horizontal feed-carousel-shelf _deals-shoveler-v2_style_list__pjYuB']//parent::ul//child::li[3]

### Product Page ###
${Product1}            xpath:(//*[@class='a-list-normal a-spacing-none no-margin-right overflow-hidden octopus-response-li-width'])[2]
${Product}             xpath://*[@class='a-section background-white octops-dlp-asin-stream-section']//parent::ul//child::li[2]
${ProductPrize}        xpath://*[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']//child::li[2]//parent::span[@class='a-price octopus-widget-price']//child::span[2]//child::span[2] 

### OnePlus Nord Buds Product Page ###
${Prize}               xpath://*[@class='a-price aok-align-center reinventPricePriceToPayMargin priceToPay']//parent::span//child::span//child::span[2]
${Details}             xpath://*[@id='seeMoreDetailsLink']

### Table Content ###
${RowCount}            xpath://*[@id='productDetails_techSpec_section_1']//tr
${ColoumCount}         xpath://*[@id='productDetails_techSpec_section_1']//tr//td

${ExpectedTitle}       RAM Size   
${ExpectedData}        16 GB 


