Module fmcthanos.

Inductive Nat : Type :=
  | O
  | S (n : Nat).

Fixpoint plus (n m : Nat) : Nat :=
  match m with
  | O => n
  | S m => S (plus n m)
  end.
Notation "x + y" := (plus x y).

(** Exercício x4.3 *)
Compute O + S(S(S(S O))).

(** Exercício x4.4 *)
Compute S(S(S O)) + S(S O).
Compute (S(S(S O)) + S(S O)) + S O.

(** Exercício x4.5 *)
Fixpoint double (n : Nat) : Nat :=
  n + n.

(** Exercício x4.6 *)
Fixpoint mult (n m : Nat) :=
  match m with
  | O => O
  | S m => (mult n m) + n
  end.
Notation "x * y" := (mult x y).

(** Exercício x4.7 *)
Compute S(S O) * (O + S O).

(** Exercício x4.8 *)
Compute S(S O) * S(S(S O)).
Compute S(S(S O)) * S(S O).

(** Exercício x4.9 *)
Fixpoint power (n m : Nat) :=
  match m with
  | O => S O
  | S m => (power n m) * n
  end.
Notation "x ^ y" := (power x y).

(** Exercício x4.10 *)
Compute S(S O) ^ S(S(S O)).

(** Exercício x4.11
Fixpoint minus (n m : Nat) : Nat =
  match m with
  | O => O
  | S m => 

Fixpoint fib (n : Nat) : Nat :=
  match n with
  | O => O
  | S O => S O
  | S(S n) => fib (S n) + fib (n)
  end.

Compute fib (S(S(S(S O)))). *)

(** Exercício x4.16 *)
Theorem mult_distr_prop :
forall (x y z : Nat), x * (y + z) = (x * y) + (x * z).
Proof.
  intros x y z.
  induction z as [ | z'].
  - simpl.
    reflexivity.
  - simpl.
    rewrite -> IHz'.
Abort.

(** Exercício x4.15 *)
Theorem mult_comm_prop :
forall (n m : Nat), n * m = m * n.
Proof.
  intros n m.
  induction m as [ | t].
  - induction n as [ | u].
    + reflexivity.
    + simpl.
      rewrite <- IHu.
      simpl.
      reflexivity.
  - induction n as [ | v].
    + simpl.
      rewrite -> IHt.
      simpl.
      reflexivity.
    + simpl.
      rewrite -> IHt.
      simpl.
      rewrite <- IHt.
Abort.

(** Exercício x4.14 *)
Theorem mult_assoc_prop :
forall (n m k : Nat), (n * m) * k = n * (m * k).
Proof.
  intros n m k.
  induction k as [ | k'].
  - simpl.
    reflexivity.
  - simpl. rewrite -> IHk'.


 induction m as [ | m'].
    + simpl.
      rewrite <- IHk'.
      simpl.
      reflexivity.
    + simpl.
      rewrite - IHm'.
Qed.

End fmcthanos.