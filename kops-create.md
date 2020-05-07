kops create cluster \
    --master-zones $ZONES \
    --zones $ZONES \
    --topology private \
    --dns-zone $(terraform output public_zone_id) \
    --networking calico \
    --vpc $(terraform output vpc_id) \
    --target=terraform \
    --out=. \
    ${NAME}
