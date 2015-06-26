.class public abstract Lorg/springframework/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final CURRENT_PATH:Ljava/lang/String; = "."

.field private static final EXTENSION_SEPARATOR:C = '.'

.field private static final FOLDER_SEPARATOR:Ljava/lang/String; = "/"

.field private static final TOP_PATH:Ljava/lang/String; = ".."

.field private static final WINDOWS_FOLDER_SEPARATOR:Ljava/lang/String; = "\\"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStringToArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 725
    :goto_0
    return-object v0

    .line 722
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 723
    .local v0, newArr:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    array-length v1, p0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public static applyRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "relativePath"

    .prologue
    .line 573
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 574
    .local v1, separatorIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 575
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, newPath:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 582
    .end local v0           #newPath:Ljava/lang/String;
    .end local p1
    :cond_1
    return-object p1
.end method

.method public static arrayToCommaDelimitedString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "arr"

    .prologue
    .line 1138
    const-string v0, ","

    invoke-static {p0, v0}, Lorg/springframework/util/StringUtils;->arrayToDelimitedString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static arrayToDelimitedString([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "arr"
    .parameter "delim"

    .prologue
    .line 1115
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1116
    const-string v2, ""

    .line 1128
    :goto_0
    return-object v2

    .line 1118
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1119
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lorg/springframework/util/ObjectUtils;->nullSafeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1121
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1123
    if-lez v0, :cond_2

    .line 1124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 478
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/springframework/util/StringUtils;->changeFirstCharacterCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static changeFirstCharacterCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "capitalize"

    .prologue
    const/4 v2, 0x0

    .line 493
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 504
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 496
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 497
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 498
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/4 v10, 0x0

    .line 595
    if-nez p0, :cond_0

    .line 596
    const/4 v8, 0x0

    .line 645
    :goto_0
    return-object v8

    .line 598
    :cond_0
    const-string v8, "\\"

    const-string v9, "/"

    invoke-static {p0, v8, v9}, Lorg/springframework/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, pathToUse:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 605
    .local v6, prefixIndex:I
    const-string v5, ""

    .line 606
    .local v5, prefix:Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 607
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 608
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 610
    :cond_1
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 612
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 615
    :cond_2
    const-string v8, "/"

    invoke-static {v4, v8}, Lorg/springframework/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, pathArray:[Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 617
    .local v3, pathElements:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 619
    .local v7, tops:I
    array-length v8, v2

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_6

    .line 620
    aget-object v0, v2, v1

    .line 621
    .local v0, element:Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 619
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 624
    :cond_3
    const-string v8, ".."

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 626
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 629
    :cond_4
    if-lez v7, :cond_5

    .line 631
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 635
    :cond_5
    invoke-interface {v3, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 641
    .end local v0           #element:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_7

    .line 642
    const-string v8, ".."

    invoke-interface {v3, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 645
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-static {v3, v9}, Lorg/springframework/util/StringUtils;->collectionToDelimitedString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static collectionToCommaDelimitedString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1104
    .local p0, coll:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const-string v0, ","

    invoke-static {p0, v0}, Lorg/springframework/util/StringUtils;->collectionToDelimitedString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static collectionToDelimitedString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, coll:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lorg/springframework/util/StringUtils;->collectionToDelimitedString(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static collectionToDelimitedString(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delim"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1072
    .local p0, coll:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    const-string v2, ""

    .line 1083
    :goto_0
    return-object v2

    .line 1075
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1077
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1078
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1083
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static commaDelimitedListToSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1055
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->commaDelimitedListToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1056
    .local v5, tokens:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1057
    .local v4, token:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1059
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static commaDelimitedListToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 1044
    const-string v0, ","

    invoke-static {p0, v0}, Lorg/springframework/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatenateStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    const/4 v3, 0x0

    .line 737
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    .end local p1
    :goto_0
    return-object p1

    .line 740
    .restart local p1
    :cond_0
    invoke-static {p1}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, p0

    .line 741
    goto :goto_0

    .line 743
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 744
    .local v0, newArr:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 746
    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 153
    .local v1, strLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 154
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const/4 v2, 0x1

    goto :goto_0

    .line 153
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static containsWhitespace(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 169
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->containsWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static countOccurrencesOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "str"
    .parameter "sub"

    .prologue
    .line 353
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 363
    :cond_1
    return v0

    .line 356
    :cond_2
    const/4 v0, 0x0

    .line 357
    .local v0, count:I
    const/4 v2, 0x0

    .line 359
    .local v2, pos:I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v1, v3

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "inString"
    .parameter "pattern"

    .prologue
    .line 401
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/springframework/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inString"
    .parameter "charsToDelete"

    .prologue
    .line 412
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 415
    .restart local p0
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 417
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 418
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 419
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "delimiter"

    .prologue
    .line 994
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/springframework/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "delimiter"
    .parameter "charsToDelete"

    .prologue
    const/4 v5, 0x0

    .line 1011
    if-nez p0, :cond_0

    .line 1012
    new-array v4, v5, [Ljava/lang/String;

    .line 1035
    :goto_0
    return-object v4

    .line 1014
    :cond_0
    if-nez p1, :cond_1

    .line 1015
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v5

    goto :goto_0

    .line 1017
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1019
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1020
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/springframework/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1024
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    .line 1026
    .local v2, pos:I
    :goto_2
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, delPos:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 1027
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/springframework/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    goto :goto_2

    .line 1030
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_4

    .line 1032
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/springframework/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    .end local v0           #delPos:I
    .end local v2           #pos:I
    :cond_4
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "str"
    .parameter "suffix"

    .prologue
    const/4 v2, 0x0

    .line 315
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v2

    .line 318
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    const/4 v2, 0x1

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, lcStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, lcSuffix:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 514
    if-nez p0, :cond_1

    .line 515
    const/4 p0, 0x0

    .line 518
    .end local p0
    .local v0, separatorIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 517
    .end local v0           #separatorIndex:I
    .restart local p0
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 518
    .restart local v0       #separatorIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 528
    if-nez p0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-object v2

    .line 531
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 532
    .local v0, extIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 535
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 536
    .local v1, folderIndex:I
    if-gt v1, v0, :cond_0

    .line 539
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static hasLength(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLength(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 96
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static hasText(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 120
    .local v1, strLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 121
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 122
    const/4 v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static hasText(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 138
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static mergeStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 760
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 773
    .end local p1
    :goto_0
    return-object p1

    .line 763
    .restart local p1
    :cond_0
    invoke-static {p1}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p1, p0

    .line 764
    goto :goto_0

    .line 766
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 768
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 769
    .local v4, str:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 770
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 773
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lorg/springframework/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .parameter "localeString"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 667
    const-string v5, "_ "

    invoke-static {p0, v5, v6, v6}, Lorg/springframework/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, parts:[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_1

    aget-object v2, v3, v6

    .line 669
    .local v2, language:Ljava/lang/String;
    :goto_0
    array-length v5, v3

    if-le v5, v7, :cond_2

    aget-object v0, v3, v7

    .line 670
    .local v0, country:Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lorg/springframework/util/StringUtils;->validateLocalePart(Ljava/lang/String;)V

    .line 671
    invoke-static {v0}, Lorg/springframework/util/StringUtils;->validateLocalePart(Ljava/lang/String;)V

    .line 672
    const-string v4, ""

    .line 673
    .local v4, variant:Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v5, v6

    .line 678
    .local v1, endIndexOfCountryCode:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/springframework/util/StringUtils;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 679
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 680
    const/16 v5, 0x5f

    invoke-static {v4, v5}, Lorg/springframework/util/StringUtils;->trimLeadingCharacter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 683
    .end local v1           #endIndexOfCountryCode:I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v5

    .line 668
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v4           #variant:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 669
    .restart local v2       #language:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 683
    .restart local v0       #country:Ljava/lang/String;
    .restart local v4       #variant:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static pathEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 655
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 437
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static quoteIfString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 448
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static removeDuplicateStrings([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "array"

    .prologue
    .line 843
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 850
    .end local p0
    :goto_0
    return-object p0

    .line 846
    .restart local p0
    :cond_0
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 847
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 848
    .local v1, element:Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 850
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lorg/springframework/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inString"
    .parameter "oldPattern"
    .parameter "newPattern"

    .prologue
    .line 375
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 391
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 378
    .restart local p0
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 380
    .local v2, pos:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 383
    .local v1, patLen:I
    :goto_1
    if-ltz v0, :cond_2

    .line 384
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    add-int v2, v0, v1

    .line 387
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static sortStringArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "array"

    .prologue
    .line 782
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const/4 v0, 0x0

    new-array p0, v0, [Ljava/lang/String;

    .line 786
    .end local p0
    :goto_0
    return-object p0

    .line 785
    .restart local p0
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "toSplit"
    .parameter "delimiter"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 863
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-object v3

    .line 866
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 867
    .local v2, offset:I
    if-ltz v2, :cond_0

    .line 870
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, beforeDelimiter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, afterDelimiter:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public static splitArrayElementsIntoProperties([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .parameter "array"
    .parameter "delimiter"

    .prologue
    .line 887
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/springframework/util/StringUtils;->splitArrayElementsIntoProperties([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static splitArrayElementsIntoProperties([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 8
    .parameter "array"
    .parameter "delimiter"
    .parameter "charsToDelete"

    .prologue
    .line 907
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 908
    const/4 v4, 0x0

    .line 921
    :cond_0
    return-object v4

    .line 910
    :cond_1
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 911
    .local v4, result:Ljava/util/Properties;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 912
    .local v1, element:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 913
    invoke-static {v1, p2}, Lorg/springframework/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    :cond_2
    invoke-static {v1, p1}, Lorg/springframework/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, splittedElement:[Ljava/lang/String;
    if-nez v5, :cond_3

    .line 911
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    :cond_3
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "str"
    .parameter "prefix"

    .prologue
    const/4 v2, 0x0

    .line 293
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 296
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    const/4 v2, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, lcStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, lcPrefix:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static stripFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 550
    if-nez p0, :cond_1

    .line 551
    const/4 p0, 0x0

    .line 561
    .end local p0
    .local v0, extIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 553
    .end local v0           #extIndex:I
    .restart local p0
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 554
    .restart local v0       #extIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 557
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 558
    .local v1, folderIndex:I
    if-gt v1, v0, :cond_0

    .line 561
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringMatch(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"
    .parameter "index"
    .parameter "substring"

    .prologue
    .line 338
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 339
    add-int v0, p1, v1

    .line 340
    .local v0, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 341
    :cond_0
    const/4 v2, 0x0

    .line 344
    .end local v0           #i:I
    :goto_1
    return v2

    .line 338
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static toStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 798
    const/4 v0, 0x0

    .line 800
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static toStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 811
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 812
    const/4 v1, 0x0

    .line 815
    :goto_0
    return-object v1

    .line 814
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 815
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "delimiters"

    .prologue
    const/4 v0, 0x1

    .line 940
    invoke-static {p0, p1, v0, v0}, Lorg/springframework/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "delimiters"
    .parameter "trimTokens"
    .parameter "ignoreEmptyTokens"

    .prologue
    .line 965
    if-nez p0, :cond_0

    .line 966
    const/4 v3, 0x0

    .line 979
    :goto_0
    return-object v3

    .line 968
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .local v0, st:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 970
    .local v2, tokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 971
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, token:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 973
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 975
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 976
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 979
    .end local v1           #token:Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lorg/springframework/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static trimAllWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 200
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    .end local p0
    :goto_0
    return-object p0

    .line 203
    .restart local p0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 205
    .local v0, index:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimArrayElements([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 825
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/String;

    .line 833
    :cond_0
    return-object v2

    .line 828
    :cond_1
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/String;

    .line 829
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 830
    aget-object v0, p0, v1

    .line 831
    .local v0, element:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v2, v1

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static trimLeadingCharacter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "leadingCharacter"

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    .end local p0
    :goto_0
    return-object p0

    .line 260
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    .end local p0
    :goto_0
    return-object p0

    .line 226
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimTrailingCharacter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "trailingCharacter"

    .prologue
    .line 274
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    .end local p0
    :goto_0
    return-object p0

    .line 277
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 240
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    .end local p0
    :goto_0
    return-object p0

    .line 243
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    .end local p0
    :goto_0
    return-object p0

    .line 182
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 189
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/springframework/util/StringUtils;->changeFirstCharacterCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unqualify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qualifiedName"

    .prologue
    .line 457
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/springframework/util/StringUtils;->unqualify(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unqualify(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .parameter "qualifiedName"
    .parameter "separator"

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validateLocalePart(Ljava/lang/String;)V
    .locals 5
    .parameter "localePart"

    .prologue
    .line 687
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 688
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 689
    .local v0, ch:C
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale part \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" contains invalid characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    .end local v0           #ch:C
    :cond_1
    return-void
.end method
