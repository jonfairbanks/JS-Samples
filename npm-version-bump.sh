# Find
PACKAGE_VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[",]//g' | tr -d '[[:space:]]')
PACKAGE_VERSION="\"version\": \"${PACKAGE_VERSION}\","

# Update
NEW_VERSION=$(echo $PACKAGE_VERSION | awk -F. -v OFS=. 'NF==1{print ++$NF}; NF>1{if(length($NF+1)>length($NF))$(NF-1)++; $NF=sprintf("%0*d", length($NF), ($NF+1)%(10^length($NF))); print}')
NEW_VERSION="\"version\": \"${NEW_VERSION}\","

# Replace
sed -i 's/$PACKAGE_VERSION/$NEW_VERSION/g' package.json
