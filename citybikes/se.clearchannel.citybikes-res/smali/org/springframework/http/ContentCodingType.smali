.class public Lorg/springframework/http/ContentCodingType;
.super Ljava/lang/Object;
.source "ContentCodingType.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/springframework/http/ContentCodingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Lorg/springframework/http/ContentCodingType; = null

.field public static final ALL_VALUE:Ljava/lang/String; = "*"

.field public static final GZIP:Lorg/springframework/http/ContentCodingType; = null

.field public static final GZIP_VALUE:Ljava/lang/String; = "gzip"

.field public static final IDENTITY:Lorg/springframework/http/ContentCodingType; = null

.field public static final IDENTITY_VALUE:Ljava/lang/String; = "identity"

.field private static final PARAM_QUALITY_FACTOR:Ljava/lang/String; = "q"

.field public static final QUALITY_VALUE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKEN:Ljava/util/BitSet; = null

.field private static final WILDCARD_TYPE:Ljava/lang/String; = "*"


# instance fields
.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    .line 88
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 89
    .local v0, ctl:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/16 v3, 0x7f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 94
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 95
    .local v2, separators:Ljava/util/BitSet;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 96
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 97
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 98
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 99
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 100
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 101
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 102
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 103
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 104
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 105
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 106
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 107
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 108
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 109
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 110
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 111
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 112
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 113
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 115
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lorg/springframework/http/ContentCodingType;->TOKEN:Ljava/util/BitSet;

    .line 116
    sget-object v3, Lorg/springframework/http/ContentCodingType;->TOKEN:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/BitSet;->set(II)V

    .line 117
    sget-object v3, Lorg/springframework/http/ContentCodingType;->TOKEN:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 118
    sget-object v3, Lorg/springframework/http/ContentCodingType;->TOKEN:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 120
    const-string v3, "*"

    invoke-static {v3}, Lorg/springframework/http/ContentCodingType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/ContentCodingType;->ALL:Lorg/springframework/http/ContentCodingType;

    .line 121
    const-string v3, "identity"

    invoke-static {v3}, Lorg/springframework/http/ContentCodingType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/ContentCodingType;->IDENTITY:Lorg/springframework/http/ContentCodingType;

    .line 122
    const-string v3, "gzip"

    invoke-static {v3}, Lorg/springframework/http/ContentCodingType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/ContentCodingType;->GZIP:Lorg/springframework/http/ContentCodingType;

    .line 461
    new-instance v3, Lorg/springframework/http/ContentCodingType$1;

    invoke-direct {v3}, Lorg/springframework/http/ContentCodingType$1;-><init>()V

    sput-object v3, Lorg/springframework/http/ContentCodingType;->QUALITY_VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/springframework/http/ContentCodingType;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 2
    .parameter "type"
    .parameter "qualityValue"

    .prologue
    .line 142
    const-string v0, "q"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/springframework/http/ContentCodingType;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-string v5, "\'type\' must not be empty"

    invoke-static {p1, v5}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1}, Lorg/springframework/http/ContentCodingType;->checkToken(Ljava/lang/String;)V

    .line 154
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    .line 155
    invoke-static {p2}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    new-instance v3, Lorg/springframework/util/LinkedCaseInsensitiveMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Lorg/springframework/util/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    .line 157
    .local v3, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, attribute:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .local v4, value:Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lorg/springframework/http/ContentCodingType;->checkParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v4}, Lorg/springframework/http/ContentCodingType;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    .end local v0           #attribute:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    .line 167
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 165
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    goto :goto_1
.end method

.method private appendTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 346
    iget-object v0, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v0, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/springframework/http/ContentCodingType;->appendTo(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 348
    return-void
.end method

.method private appendTo(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private checkParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 184
    const-string v2, "parameter attribute must not be empty"

    invoke-static {p1, v2}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "parameter value must not be empty"

    invoke-static {p2, v2}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lorg/springframework/http/ContentCodingType;->checkToken(Ljava/lang/String;)V

    .line 187
    const-string v2, "q"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-direct {p0, p2}, Lorg/springframework/http/ContentCodingType;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 190
    .local v0, d:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid quality value \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": should be between 0.0 and 1.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 194
    .end local v0           #d:D
    :cond_0
    :goto_1
    return-void

    .line 190
    .restart local v0       #d:D
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    .end local v0           #d:D
    :cond_2
    invoke-direct {p0, p2}, Lorg/springframework/http/ContentCodingType;->isQuotedString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-direct {p0, p2}, Lorg/springframework/http/ContentCodingType;->checkToken(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkToken(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 175
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, ch:C
    sget-object v2, Lorg/springframework/http/ContentCodingType;->TOKEN:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid token character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in token \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v0           #ch:C
    :cond_1
    return-void
.end method

.method private isQuotedString(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseCodingType(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;
    .locals 11
    .parameter "codingType"

    .prologue
    const/4 v10, 0x0

    .line 374
    const-string v8, "\'codingType\' must not be empty"

    invoke-static {p0, v8}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v8, ";"

    invoke-static {p0, v8}, Lorg/springframework/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, parts:[Ljava/lang/String;
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, type:Ljava/lang/String;
    const/4 v4, 0x0

    .line 379
    .local v4, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 380
    new-instance v4, Ljava/util/LinkedHashMap;

    .end local v4           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v4, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 381
    .restart local v4       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_1

    .line 382
    aget-object v3, v5, v2

    .line 383
    .local v3, parameter:Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 384
    .local v1, eqIndex:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 385
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, attribute:Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, value:Ljava/lang/String;
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v0           #attribute:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v1           #eqIndex:I
    .end local v2           #i:I
    .end local v3           #parameter:Ljava/lang/String;
    :cond_1
    new-instance v8, Lorg/springframework/http/ContentCodingType;

    invoke-direct {v8, v6, v4}, Lorg/springframework/http/ContentCodingType;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v8
.end method

.method public static parseCodingTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "codingTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 406
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 413
    :cond_0
    return-object v3

    .line 408
    :cond_1
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, tokens:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/ContentCodingType;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 411
    .local v4, token:Ljava/lang/String;
    invoke-static {v4}, Lorg/springframework/http/ContentCodingType;->parseCodingType(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static sortByQualityValue(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, codingTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/ContentCodingType;>;"
    const-string v0, "\'codingTypes\' must not be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 453
    sget-object v0, Lorg/springframework/http/ContentCodingType;->QUALITY_VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 455
    :cond_0
    return-void
.end method

.method public static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/springframework/http/ContentCodingType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, codingTypes:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/springframework/http/ContentCodingType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/springframework/http/ContentCodingType;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/ContentCodingType;

    .line 426
    .local v1, codingType:Lorg/springframework/http/ContentCodingType;
    invoke-direct {v1, v0}, Lorg/springframework/http/ContentCodingType;->appendTo(Ljava/lang/StringBuilder;)V

    .line 427
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 431
    .end local v1           #codingType:Lorg/springframework/http/ContentCodingType;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 202
    const/4 p1, 0x0

    .line 204
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    invoke-direct {p0, p1}, Lorg/springframework/http/ContentCodingType;->isQuotedString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;
    .locals 1
    .parameter "value"

    .prologue
    .line 364
    invoke-static {p0}, Lorg/springframework/http/ContentCodingType;->parseCodingType(Ljava/lang/String;)Lorg/springframework/http/ContentCodingType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lorg/springframework/http/ContentCodingType;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/http/ContentCodingType;->compareTo(Lorg/springframework/http/ContentCodingType;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/springframework/http/ContentCodingType;)I
    .locals 11
    .parameter "other"

    .prologue
    .line 285
    iget-object v9, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    iget-object v10, p1, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, comp:I
    if-eqz v0, :cond_0

    move v9, v0

    .line 316
    :goto_0
    return v9

    .line 289
    :cond_0
    iget-object v9, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    iget-object v10, p1, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    sub-int v0, v9, v10

    .line 290
    if-eqz v0, :cond_1

    move v9, v0

    .line 291
    goto :goto_0

    .line 293
    :cond_1
    new-instance v6, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 294
    .local v6, thisAttributes:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 295
    new-instance v2, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 296
    .local v2, otherAttributes:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v9, p1, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 298
    .local v7, thisAttributesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 299
    .local v3, otherAttributesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 300
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 301
    .local v5, thisAttribute:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, otherAttribute:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 303
    if-eqz v0, :cond_3

    move v9, v0

    .line 304
    goto :goto_0

    .line 306
    :cond_3
    iget-object v9, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 307
    .local v8, thisValue:Ljava/lang/String;
    iget-object v9, p1, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, otherValue:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 309
    const-string v4, ""

    .line 311
    :cond_4
    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 312
    if-eqz v0, :cond_2

    move v9, v0

    .line 313
    goto :goto_0

    .line 316
    .end local v1           #otherAttribute:Ljava/lang/String;
    .end local v4           #otherValue:Ljava/lang/String;
    .end local v5           #thisAttribute:Ljava/lang/String;
    .end local v8           #thisValue:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    if-ne p0, p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    instance-of v3, p1, Lorg/springframework/http/ContentCodingType;

    if-nez v3, :cond_2

    move v1, v2

    .line 325
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 327
    check-cast v0, Lorg/springframework/http/ContentCodingType;

    .line 328
    .local v0, otherType:Lorg/springframework/http/ContentCodingType;
    iget-object v3, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    iget-object v4, v0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 236
    iget-object v0, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQualityValue()D
    .locals 3

    .prologue
    .line 226
    const-string v1, "q"

    invoke-virtual {p0, v1}, Lorg/springframework/http/ContentCodingType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, qualityFactory:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, 0x3ff0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 334
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/springframework/http/ContentCodingType;->parameters:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 335
    return v0
.end method

.method public includes(Lorg/springframework/http/ContentCodingType;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/springframework/http/ContentCodingType;->isWildcardType()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 252
    goto :goto_0

    .line 253
    :cond_2
    iget-object v2, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public isCompatibleWith(Lorg/springframework/http/ContentCodingType;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lorg/springframework/http/ContentCodingType;->isWildcardType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/springframework/http/ContentCodingType;->isWildcardType()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 273
    goto :goto_0

    .line 274
    :cond_3
    iget-object v2, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 275
    goto :goto_0
.end method

.method public isWildcardType()Z
    .locals 2

    .prologue
    .line 218
    const-string v0, "*"

    iget-object v1, p0, Lorg/springframework/http/ContentCodingType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/springframework/http/ContentCodingType;->appendTo(Ljava/lang/StringBuilder;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
