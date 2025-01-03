(*
  1. Problem that ain't a problem

  write a function 
  last : 'a list-> 'a
  option that returns the
  last element of a list 
 *)

let rec last = function [] -> None | [ x ] -> Some x | _ :: t -> last t

let print_value value =
  match value with
  | None -> Printf.printf "The list is empty.\n"
  | Some x -> Printf.printf "The last value is: %d\n" x
;;

last [ 2; 3; 4 ] |> print_value

(*
  2. Problem that ain't a problem

  Find the last two (last and penultimate) elements of a list.
 *)

let rec last_two = function
  | [] | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_two t

let print_values values =
  match values with
  | None -> Printf.printf "The list is empty.\n"
  | Some (x, y) -> Printf.printf "The last value is: %d and %d\n" x y
;;

last_two [ 2; 2; 3; 4; 4; 5 ] |> print_values
