let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = [];
let titles_method = ["Reinforcement learning", "Molecular dynamics", "Ab initio", 
                     "First-principles", "High entropy", "eigenstrain", "eigenstress",
                     "micromechanics", "Peierls"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = [];

let conferences = ["AAAI", "ICML", "ICLR", "NeurIPS", "IJCAI", "AAMAS"];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
