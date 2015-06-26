.class public abstract Lorg/springframework/core/GenericCollectionTypeResolver;
.super Ljava/lang/Object;
.source "GenericCollectionTypeResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;
    .locals 9
    .parameter "type"
    .parameter
    .parameter "typeIndex"
    .parameter
    .parameter
    .parameter "nestingLevel"
    .parameter "currentLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, typeVariableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .local p4, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v8, p0

    .line 328
    .local v8, resolvedType:Ljava/lang/reflect/Type;
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 329
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    .line 330
    .local v7, mappedType:Ljava/lang/reflect/Type;
    if-eqz v7, :cond_0

    .line 331
    move-object v8, v7

    .line 334
    .end local v7           #mappedType:Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    move-object v0, v8

    .line 335
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromParameterizedType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v1

    .line 347
    .end local v8           #resolvedType:Ljava/lang/reflect/Type;
    :goto_0
    return-object v1

    .line 338
    .restart local v8       #resolvedType:Ljava/lang/reflect/Type;
    :cond_1
    instance-of v1, v8, Ljava/lang/Class;

    if-eqz v1, :cond_2

    move-object v0, v8

    .line 339
    check-cast v0, Ljava/lang/Class;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 342
    :cond_2
    instance-of v1, v8, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 343
    check-cast v8, Ljava/lang/reflect/GenericArrayType;

    .end local v8           #resolvedType:Ljava/lang/reflect/Type;
    invoke-interface {v8}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 344
    .local v0, compType:Ljava/lang/reflect/Type;
    add-int/lit8 v6, p6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 347
    .end local v0           #compType:Ljava/lang/reflect/Type;
    .restart local v8       #resolvedType:Ljava/lang/reflect/Type;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 7
    .parameter
    .parameter
    .parameter "typeIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 433
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;
    .locals 12
    .parameter
    .parameter
    .parameter "typeIndex"
    .parameter
    .parameter
    .parameter "nestingLevel"
    .parameter "currentLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, typeVariableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .local p4, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.util."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v1, 0x0

    .line 468
    :goto_0
    return-object v1

    .line 452
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->isIntrospectionCandidate(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 457
    .local v9, ifcs:[Ljava/lang/reflect/Type;
    if-eqz v9, :cond_4

    .line 458
    move-object v7, v9

    .local v7, arr$:[Ljava/lang/reflect/Type;
    array-length v10, v7

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_4

    aget-object v0, v7, v8

    .line 459
    .local v0, ifc:Ljava/lang/reflect/Type;
    move-object v11, v0

    .line 460
    .local v11, rawType:Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 461
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 463
    :cond_2
    instance-of v1, v11, Ljava/lang/Class;

    if-eqz v1, :cond_3

    check-cast v11, Ljava/lang/Class;

    .end local v11           #rawType:Ljava/lang/reflect/Type;
    invoke-static {v11}, Lorg/springframework/core/GenericCollectionTypeResolver;->isIntrospectionCandidate(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 464
    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 458
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 468
    .end local v0           #ifc:Ljava/lang/reflect/Type;
    .end local v7           #arr$:[Ljava/lang/reflect/Type;
    .end local v8           #i$:I
    .end local v10           #len$:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static extractTypeFromParameterizedType(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;
    .locals 24
    .parameter "ptype"
    .parameter
    .parameter "typeIndex"
    .parameter
    .parameter
    .parameter "nestingLevel"
    .parameter "currentLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, typeVariableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .local p4, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 365
    const/16 v17, 0x0

    .line 422
    :cond_0
    :goto_0
    return-object v17

    .line 367
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 368
    .local v8, rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    .line 369
    .local v21, paramTypes:[Ljava/lang/reflect/Type;
    sub-int v2, p5, p6

    if-lez v2, :cond_4

    .line 370
    add-int/lit8 v7, p6, 0x1

    .line 371
    .local v7, nextLevel:I
    if-eqz p4, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v16, v2

    .line 373
    .local v16, currentTypeIndex:Ljava/lang/Integer;
    :goto_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 374
    .local v18, indexToUse:I
    :goto_2
    aget-object v1, v21, v18

    .local v1, paramType:Ljava/lang/reflect/Type;
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 375
    invoke-static/range {v1 .. v7}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v17

    goto :goto_0

    .line 371
    .end local v1           #paramType:Ljava/lang/reflect/Type;
    .end local v16           #currentTypeIndex:Ljava/lang/Integer;
    .end local v18           #indexToUse:I
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 373
    .restart local v16       #currentTypeIndex:Ljava/lang/Integer;
    :cond_3
    move-object/from16 v0, v21

    array-length v2, v0

    add-int/lit8 v18, v2, -0x1

    goto :goto_2

    .line 377
    .end local v7           #nextLevel:I
    .end local v16           #currentTypeIndex:Ljava/lang/Integer;
    :cond_4
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 378
    const/16 v17, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    .line 380
    invoke-static/range {v8 .. v14}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v17

    .line 382
    .local v17, fromSuperclassOrInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v17, :cond_0

    .line 385
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, p2

    if-lt v0, v2, :cond_7

    .line 386
    :cond_6
    const/16 v17, 0x0

    goto :goto_0

    .line 388
    :cond_7
    aget-object v1, v21, p2

    .line 389
    .restart local v1       #paramType:Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_8

    if-eqz p3, :cond_8

    move-object v2, v1

    .line 390
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/reflect/Type;

    .line 391
    .local v20, mappedType:Ljava/lang/reflect/Type;
    if-eqz v20, :cond_8

    .line 392
    move-object/from16 v1, v20

    .line 395
    .end local v20           #mappedType:Ljava/lang/reflect/Type;
    :cond_8
    instance-of v2, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_9

    move-object/from16 v23, v1

    .line 396
    check-cast v23, Ljava/lang/reflect/WildcardType;

    .line 397
    .local v23, wildcardType:Ljava/lang/reflect/WildcardType;
    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v22

    .line 398
    .local v22, upperBounds:[Ljava/lang/reflect/Type;
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    array-length v2, v0

    if-lez v2, :cond_b

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 399
    const/4 v2, 0x0

    aget-object v1, v22, v2

    .line 408
    .end local v22           #upperBounds:[Ljava/lang/reflect/Type;
    .end local v23           #wildcardType:Ljava/lang/reflect/WildcardType;
    :cond_9
    :goto_3
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_a

    .line 409
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .end local v1           #paramType:Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 411
    .restart local v1       #paramType:Ljava/lang/reflect/Type;
    :cond_a
    instance-of v2, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_c

    .line 413
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .end local v1           #paramType:Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v15

    .line 414
    .local v15, compType:Ljava/lang/reflect/Type;
    instance-of v2, v15, Ljava/lang/Class;

    if-eqz v2, :cond_d

    .line 415
    check-cast v15, Ljava/lang/Class;

    .end local v15           #compType:Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    goto/16 :goto_0

    .line 402
    .restart local v1       #paramType:Ljava/lang/reflect/Type;
    .restart local v22       #upperBounds:[Ljava/lang/reflect/Type;
    .restart local v23       #wildcardType:Ljava/lang/reflect/WildcardType;
    :cond_b
    invoke-interface/range {v23 .. v23}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v19

    .line 403
    .local v19, lowerBounds:[Ljava/lang/reflect/Type;
    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_9

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v19, v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 404
    const/4 v2, 0x0

    aget-object v1, v19, v2

    goto :goto_3

    .line 418
    .end local v19           #lowerBounds:[Ljava/lang/reflect/Type;
    .end local v22           #upperBounds:[Ljava/lang/reflect/Type;
    .end local v23           #wildcardType:Ljava/lang/reflect/WildcardType;
    :cond_c
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_d

    .line 420
    check-cast v1, Ljava/lang/Class;

    .end local v1           #paramType:Ljava/lang/reflect/Type;
    move-object/from16 v17, v1

    goto/16 :goto_0

    .line 422
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public static getCollectionFieldType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .parameter "collectionField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionFieldType(Ljava/lang/reflect/Field;I)Ljava/lang/Class;
    .locals 3
    .parameter "collectionField"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionFieldType(Ljava/lang/reflect/Field;ILjava/util/Map;)Ljava/lang/Class;
    .locals 2
    .parameter "collectionField"
    .parameter "nestingLevel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionParameterType(Lorg/springframework/core/MethodParameter;)Ljava/lang/Class;
    .locals 2
    .parameter "methodParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 187
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericParameterType(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 214
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionReturnType(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 2
    .parameter "method"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 228
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, collectionClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/util/Collection;>;"
    const-class v0, Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;
    .locals 7
    .parameter "field"
    .parameter
    .parameter "typeIndex"
    .parameter
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getGenericParameterType(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 7
    .parameter "methodParam"
    .parameter
    .parameter "typeIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/springframework/core/GenericTypeResolver;->getTargetType(Lorg/springframework/core/MethodParameter;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v3, p0, Lorg/springframework/core/MethodParameter;->typeVariableMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/springframework/core/MethodParameter;->typeIndexesPerLevel:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/springframework/core/MethodParameter;->getNestingLevel()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;
    .locals 7
    .parameter "method"
    .parameter
    .parameter "typeIndex"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractType(Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/util/Map;Ljava/util/Map;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyFieldType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .parameter "mapField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyFieldType(Ljava/lang/reflect/Field;I)Ljava/lang/Class;
    .locals 3
    .parameter "mapField"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 129
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyFieldType(Ljava/lang/reflect/Field;ILjava/util/Map;)Ljava/lang/Class;
    .locals 2
    .parameter "mapField"
    .parameter "nestingLevel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyParameterType(Lorg/springframework/core/MethodParameter;)Ljava/lang/Class;
    .locals 2
    .parameter "methodParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 196
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericParameterType(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyReturnType(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 2
    .parameter "method"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 249
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapKeyType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, mapClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/util/Map;>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueFieldType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 3
    .parameter "mapField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 152
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueFieldType(Ljava/lang/reflect/Field;I)Ljava/lang/Class;
    .locals 3
    .parameter "mapField"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueFieldType(Ljava/lang/reflect/Field;ILjava/util/Map;)Ljava/lang/Class;
    .locals 2
    .parameter "mapField"
    .parameter "nestingLevel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, typeIndexesPerLevel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericFieldType(Ljava/lang/reflect/Field;Ljava/lang/Class;ILjava/util/Map;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueParameterType(Lorg/springframework/core/MethodParameter;)Ljava/lang/Class;
    .locals 2
    .parameter "methodParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 205
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericParameterType(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 258
    const-class v0, Ljava/util/Map;

    invoke-static {p0, v0, v1, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueReturnType(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 2
    .parameter "method"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 270
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lorg/springframework/core/GenericCollectionTypeResolver;->getGenericReturnType(Ljava/lang/reflect/Method;Ljava/lang/Class;II)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, mapClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/util/Map;>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/springframework/core/GenericCollectionTypeResolver;->extractTypeFromClass(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static isIntrospectionCandidate(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
