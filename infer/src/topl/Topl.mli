(*
 * Copyright (c) 2019-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

open! IStd

val active : unit -> bool
(** Returns whether the TOPL analysis is active. *)

val get_proc_attr : Typ.Procname.t -> ProcAttributes.t option
(** [get_proc_attr proc_name] returns the attributes of [get_proc_desc proc_name] *)

val get_proc_desc : Typ.Procname.t -> Procdesc.t option
(** Returns a synthesized Procdesc.t, when it corresponds to instrumentation for a TOPL property. *)

val instrument : Tenv.t -> Procdesc.t -> unit
(** Inserts calls to the TOPL automaton. Mutates the arguments: it is the caller's responsibility
to instrument procedures at most once. *)
