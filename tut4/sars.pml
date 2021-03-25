set cartoon_side_chain_helper, 1
cmd.bg_color('white')
fetch 3sci
create ace2, chain A and polymer
create spike, chain E and polymer
hide everything
show cartoon, ace2
# set surface_quality, 2
util.protein_vacuum_esp("spike",mode=2,quiet=0)
zoom visible
