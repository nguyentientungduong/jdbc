/*
   Copyright (c) 2017 TOSHIBA Digital Solutions Corporation

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
package com.toshiba.mwcloud.gs.sql.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * <div lang="ja">
 * NOT NULL制約を持たないカラムであることを示します。
 *
 * @see Container
 * @since 3.5
 * </div><div lang="en">
 * NOT NULL indicates the column has no constraint.
 *
 * @see Container
 * @since 3.5
 * </div>
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({
	ElementType.TYPE,
	ElementType.FIELD,
	ElementType.METHOD,
	ElementType.PACKAGE})
@interface Nullable {

}
