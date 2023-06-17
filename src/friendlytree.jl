struct FriendlyPOMCPRoot{B, A, O}
    b::B
    children::Dict{A, FriendlyPOMCPActionNode{A,O}}
end
struct FriendlyPOMCPActionNode{A, O}
    a::A
    n::Int
    v::Float64
    # children::Vector{FriendlyPOMCPObservationNode{A, O}}
    children::Dict{O, FriendlyPOMCPObservationNode{A, O}}
end
struct FriendlyPOMCPObservationNode{A, O}
    o::O
    total_n::Int
    # children::Vector{FriendlyPOMCPActionNode{A, O}}
    children::Dict{A, FriendlyPOMCPActionNode{A, O}}
end
AbstractTrees.children(n::FriendlyPOMCPActionNode) = values(n.children)

function convertTree(tree::POMCPTree)
    

end