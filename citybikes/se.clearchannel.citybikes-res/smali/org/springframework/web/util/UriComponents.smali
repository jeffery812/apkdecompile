.class public final Lorg/springframework/web/util/UriComponents;
.super Ljava/lang/Object;
.source "UriComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/web/util/UriComponents$VarArgsTemplateVariables;,
        Lorg/springframework/web/util/UriComponents$MapTemplateVariables;,
        Lorg/springframework/web/util/UriComponents$UriTemplateVariables;,
        Lorg/springframework/web/util/UriComponents$PathComponentComposite;,
        Lorg/springframework/web/util/UriComponents$PathSegmentComponent;,
        Lorg/springframework/web/util/UriComponents$FullPathComponent;,
        Lorg/springframework/web/util/UriComponents$PathComponent;,
        Lorg/springframework/web/util/UriComponents$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final NAMES_PATTERN:Ljava/util/regex/Pattern; = null

.field static final NULL_PATH_COMPONENT:Lorg/springframework/web/util/UriComponents$PathComponent; = null

.field private static final PATH_DELIMITER:C = '/'


# instance fields
.field private final encoded:Z

.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final path:Lorg/springframework/web/util/UriComponents$PathComponent;

.field private final port:I

.field private final queryParams:Lorg/springframework/util/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "\\{([^/]+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriComponents;->NAMES_PATTERN:Ljava/util/regex/Pattern;

    .line 948
    new-instance v0, Lorg/springframework/web/util/UriComponents$1;

    invoke-direct {v0}, Lorg/springframework/web/util/UriComponents$1;-><init>()V

    sput-object v0, Lorg/springframework/web/util/UriComponents;->NULL_PATH_COMPONENT:Lorg/springframework/web/util/UriComponents$PathComponent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/springframework/web/util/UriComponents$PathComponent;Lorg/springframework/util/MultiValueMap;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "scheme"
    .parameter "userInfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter
    .parameter "fragment"
    .parameter "encoded"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lorg/springframework/web/util/UriComponents$PathComponent;",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p6, queryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    .line 98
    iput p4, p0, Lorg/springframework/web/util/UriComponents;->port:I

    .line 99
    if-eqz p5, :cond_1

    .end local p5
    :goto_0
    iput-object p5, p0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    .line 100
    if-eqz p6, :cond_2

    .end local p6           #queryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-static {p6}, Lorg/springframework/util/CollectionUtils;->unmodifiableMultiValueMap(Lorg/springframework/util/MultiValueMap;)Lorg/springframework/util/MultiValueMap;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    .line 102
    iput-object p7, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    .line 103
    iput-boolean p8, p0, Lorg/springframework/web/util/UriComponents;->encoded:Z

    .line 104
    if-eqz p9, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/springframework/web/util/UriComponents;->verify()V

    .line 107
    :cond_0
    return-void

    .line 99
    .restart local p5
    .restart local p6       #queryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object p5, Lorg/springframework/web/util/UriComponents;->NULL_PATH_COMPONENT:Lorg/springframework/web/util/UriComponents$PathComponent;

    goto :goto_0

    .line 100
    .end local p5
    :cond_2
    new-instance p6, Lorg/springframework/util/LinkedMultiValueMap;

    .end local p6           #queryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>(I)V

    goto :goto_1
.end method

.method static synthetic access$100(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeBytes([BLorg/springframework/web/util/UriComponents$Type;)[B
    .locals 7
    .parameter "source"
    .parameter "type"

    .prologue
    const/16 v6, 0x10

    .line 297
    const-string v5, "\'source\' must not be null"

    invoke-static {p0, v5}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    const-string v5, "\'type\' must not be null"

    invoke-static {p1, v5}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 301
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 302
    aget-byte v0, p0, v4

    .line 303
    .local v0, b:I
    if-gez v0, :cond_0

    .line 304
    add-int/lit16 v0, v0, 0x100

    .line 306
    :cond_0
    invoke-virtual {p1, v0}, Lorg/springframework/web/util/UriComponents$Type;->isAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 301
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 313
    .local v2, hex1:C
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 315
    .local v3, hex2:C
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 319
    .end local v0           #b:I
    .end local v2           #hex1:C
    .end local v3           #hex2:C
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method static encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;
    .locals 3
    .parameter "source"
    .parameter "encoding"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const/4 v1, 0x0

    .line 293
    :goto_0
    return-object v1

    .line 290
    :cond_0
    const-string v1, "\'encoding\' must not be empty"

    invoke-static {p1, v1}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lorg/springframework/web/util/UriComponents;->encodeBytes([BLorg/springframework/web/util/UriComponents$Type;)[B

    move-result-object v0

    .line 293
    .local v0, bytes:[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method private expandInternal(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents;
    .locals 19
    .parameter "uriVariables"

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/springframework/web/util/UriComponents;->encoded:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v6, "Cannot expand an already encoded UriComponents object"

    invoke-static {v2, v6}, Lorg/springframework/util/Assert;->state(ZLjava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, expandedScheme:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, expandedUserInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, expandedHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/springframework/web/util/UriComponents$PathComponent;->expand(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents$PathComponent;

    move-result-object v7

    .line 414
    .local v7, expandedPath:Lorg/springframework/web/util/UriComponents$PathComponent;
    new-instance v8, Lorg/springframework/util/LinkedMultiValueMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v2}, Lorg/springframework/util/MultiValueMap;->size()I

    move-result v2

    invoke-direct {v8, v2}, Lorg/springframework/util/LinkedMultiValueMap;-><init>(I)V

    .line 416
    .local v8, expandedQueryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v2}, Lorg/springframework/util/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 417
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, expandedName:Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .local v15, expandedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 420
    .local v18, value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v14

    .line 421
    .local v14, expandedValue:Ljava/lang/String;
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 408
    .end local v3           #expandedScheme:Ljava/lang/String;
    .end local v4           #expandedUserInfo:Ljava/lang/String;
    .end local v5           #expandedHost:Ljava/lang/String;
    .end local v7           #expandedPath:Lorg/springframework/web/util/UriComponents$PathComponent;
    .end local v8           #expandedQueryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13           #expandedName:Ljava/lang/String;
    .end local v14           #expandedValue:Ljava/lang/String;
    .end local v15           #expandedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #value:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 423
    .restart local v3       #expandedScheme:Ljava/lang/String;
    .restart local v4       #expandedUserInfo:Ljava/lang/String;
    .restart local v5       #expandedHost:Ljava/lang/String;
    .restart local v7       #expandedPath:Lorg/springframework/web/util/UriComponents$PathComponent;
    .restart local v8       #expandedQueryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v13       #expandedName:Ljava/lang/String;
    .restart local v15       #expandedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8, v13, v15}, Lorg/springframework/util/MultiValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 425
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13           #expandedName:Ljava/lang/String;
    .end local v15           #expandedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, expandedFragment:Ljava/lang/String;
    new-instance v2, Lorg/springframework/web/util/UriComponents;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/springframework/web/util/UriComponents;->port:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lorg/springframework/web/util/UriComponents;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/springframework/web/util/UriComponents$PathComponent;Lorg/springframework/util/MultiValueMap;Ljava/lang/String;ZZ)V

    return-object v2
.end method

.method private static expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;
    .locals 9
    .parameter "source"
    .parameter "uriVariables"

    .prologue
    .line 432
    if-nez p0, :cond_1

    .line 433
    const/4 p0, 0x0

    .line 449
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 435
    .restart local p0
    :cond_1
    const/16 v7, 0x7b

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 438
    sget-object v7, Lorg/springframework/web/util/UriComponents;->NAMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 439
    .local v1, matcher:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 441
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, match:Ljava/lang/String;
    invoke-static {v0}, Lorg/springframework/web/util/UriComponents;->getVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, variableName:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/springframework/web/util/UriComponents$UriTemplateVariables;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 444
    .local v5, variableValue:Ljava/lang/Object;
    invoke-static {v5}, Lorg/springframework/web/util/UriComponents;->getVariableValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, variableValueString:Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, replacement:Ljava/lang/String;
    invoke-virtual {v1, v3, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 448
    .end local v0           #match:Ljava/lang/String;
    .end local v2           #replacement:Ljava/lang/String;
    .end local v4           #variableName:Ljava/lang/String;
    .end local v5           #variableValue:Ljava/lang/Object;
    .end local v6           #variableValueString:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "match"

    .prologue
    .line 453
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 454
    .local v0, colonIdx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getVariableValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "variableValue"

    .prologue
    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private verify()V
    .locals 6

    .prologue
    .line 331
    iget-boolean v4, p0, Lorg/springframework/web/util/UriComponents;->encoded:Z

    if-nez v4, :cond_0

    .line 345
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v4, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    sget-object v5, Lorg/springframework/web/util/UriComponents$Type;->SCHEME:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v4, v5}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    .line 335
    iget-object v4, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    sget-object v5, Lorg/springframework/web/util/UriComponents$Type;->USER_INFO:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v4, v5}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    .line 336
    iget-object v4, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    sget-object v5, Lorg/springframework/web/util/UriComponents$Type;->HOST:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v4, v5}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    .line 337
    iget-object v4, p0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    invoke-interface {v4}, Lorg/springframework/web/util/UriComponents$PathComponent;->verify()V

    .line 338
    iget-object v4, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v4}, Lorg/springframework/util/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v4, v5}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, value:Ljava/lang/String;
    sget-object v4, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v3, v4}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    goto :goto_1

    .line 344
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    sget-object v5, Lorg/springframework/web/util/UriComponents$Type;->FRAGMENT:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v4, v5}, Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    goto :goto_0
.end method

.method private static verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V
    .locals 10
    .parameter "source"
    .parameter "type"

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x1

    .line 349
    if-nez p0, :cond_1

    .line 377
    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 355
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 356
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 357
    .local v0, ch:C
    const/16 v7, 0x25

    if-ne v0, v7, :cond_6

    .line 358
    add-int/lit8 v7, v3, 0x2

    if-ge v7, v5, :cond_5

    .line 359
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 360
    .local v1, hex1:C
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 361
    .local v2, hex2:C
    invoke-static {v1, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 362
    .local v6, u:I
    invoke-static {v2, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 363
    .local v4, l:I
    if-eq v6, v8, :cond_2

    if-ne v4, v8, :cond_3

    .line 364
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid encoded sequence \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 366
    :cond_3
    add-int/lit8 v3, v3, 0x2

    .line 355
    .end local v1           #hex1:C
    .end local v2           #hex2:C
    .end local v4           #l:I
    .end local v6           #u:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid encoded sequence \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 372
    :cond_6
    invoke-virtual {p1, v0}, Lorg/springframework/web/util/UriComponents$Type;->isAllowed(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 373
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/springframework/web/util/UriComponents$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public encode()Lorg/springframework/web/util/UriComponents;
    .locals 3

    .prologue
    .line 231
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lorg/springframework/web/util/UriComponents;->encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "\"UTF-8\" not supported"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents;
    .locals 19
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v2, "\'encoding\' must not be empty"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/springframework/web/util/UriComponents;->encoded:Z

    if-eqz v2, :cond_0

    .line 270
    .end local p0
    :goto_0
    return-object p0

    .line 253
    .restart local p0
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    sget-object v6, Lorg/springframework/web/util/UriComponents$Type;->SCHEME:Lorg/springframework/web/util/UriComponents$Type;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v6}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, encodedScheme:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    sget-object v6, Lorg/springframework/web/util/UriComponents$Type;->USER_INFO:Lorg/springframework/web/util/UriComponents$Type;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v6}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, encodedUserInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    sget-object v6, Lorg/springframework/web/util/UriComponents$Type;->HOST:Lorg/springframework/web/util/UriComponents$Type;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v6}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, encodedHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/springframework/web/util/UriComponents$PathComponent;->encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$PathComponent;

    move-result-object v7

    .line 257
    .local v7, encodedPath:Lorg/springframework/web/util/UriComponents$PathComponent;
    new-instance v8, Lorg/springframework/util/LinkedMultiValueMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v2}, Lorg/springframework/util/MultiValueMap;->size()I

    move-result v2

    invoke-direct {v8, v2}, Lorg/springframework/util/LinkedMultiValueMap;-><init>(I)V

    .line 259
    .local v8, encodedQueryParams:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v2}, Lorg/springframework/util/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 260
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v6}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, encodedName:Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    .local v14, encodedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 263
    .local v18, value:Ljava/lang/String;
    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v13

    .line 264
    .local v13, encodedValue:Ljava/lang/String;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    .end local v13           #encodedValue:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v8, v12, v14}, Lorg/springframework/util/MultiValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    .end local v12           #encodedName:Ljava/lang/String;
    .end local v14           #encodedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    sget-object v6, Lorg/springframework/web/util/UriComponents$Type;->FRAGMENT:Lorg/springframework/web/util/UriComponents$Type;

    move-object/from16 v0, p1

    invoke-static {v2, v0, v6}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, encodedFragment:Ljava/lang/String;
    new-instance v2, Lorg/springframework/web/util/UriComponents;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/springframework/web/util/UriComponents;->port:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lorg/springframework/web/util/UriComponents;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/springframework/web/util/UriComponents$PathComponent;Lorg/springframework/util/MultiValueMap;Ljava/lang/String;ZZ)V

    move-object/from16 p0, v2

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    if-ne p0, p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 552
    :cond_1
    instance-of v3, p1, Lorg/springframework/web/util/UriComponents;

    if-eqz v3, :cond_f

    move-object v0, p1

    .line 553
    check-cast v0, Lorg/springframework/web/util/UriComponents;

    .line 555
    .local v0, other:Lorg/springframework/web/util/UriComponents;
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    move v1, v2

    .line 556
    goto :goto_0

    .line 555
    :cond_3
    iget-object v3, v0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 558
    :cond_4
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 559
    goto :goto_0

    .line 558
    :cond_6
    iget-object v3, v0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 561
    :cond_7
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 562
    goto :goto_0

    .line 561
    :cond_9
    iget-object v3, v0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 564
    :cond_a
    iget v3, p0, Lorg/springframework/web/util/UriComponents;->port:I

    iget v4, v0, Lorg/springframework/web/util/UriComponents;->port:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 565
    goto :goto_0

    .line 567
    :cond_b
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    iget-object v4, v0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    .line 568
    goto :goto_0

    .line 570
    :cond_c
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    iget-object v4, v0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 571
    goto :goto_0

    .line 573
    :cond_d
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 574
    goto :goto_0

    .line 573
    :cond_e
    iget-object v3, v0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1

    .end local v0           #other:Lorg/springframework/web/util/UriComponents;
    :cond_f
    move v1, v2

    .line 579
    goto :goto_0
.end method

.method public expand(Ljava/util/Map;)Lorg/springframework/web/util/UriComponents;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/web/util/UriComponents;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, uriVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "\'uriVariables\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lorg/springframework/web/util/UriComponents$MapTemplateVariables;

    invoke-direct {v0, p1}, Lorg/springframework/web/util/UriComponents$MapTemplateVariables;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/springframework/web/util/UriComponents;->expandInternal(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    return-object v0
.end method

.method public varargs expand([Ljava/lang/Object;)Lorg/springframework/web/util/UriComponents;
    .locals 1
    .parameter "uriVariableValues"

    .prologue
    .line 402
    const-string v0, "\'uriVariableValues\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v0, Lorg/springframework/web/util/UriComponents$VarArgsTemplateVariables;

    invoke-direct {v0, p1}, Lorg/springframework/web/util/UriComponents$VarArgsTemplateVariables;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/springframework/web/util/UriComponents;->expandInternal(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    invoke-interface {v0}, Lorg/springframework/web/util/UriComponents$PathComponent;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    invoke-interface {v0}, Lorg/springframework/web/util/UriComponents$PathComponent;->getPathSegments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/springframework/web/util/UriComponents;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x26

    .line 171
    iget-object v7, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v7}, Lorg/springframework/util/MultiValueMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v4, queryBuilder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-interface {v7}, Lorg/springframework/util/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 176
    .local v6, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 178
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    if-eqz v5, :cond_3

    .line 190
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 199
    .end local v4           #queryBuilder:Ljava/lang/StringBuilder;
    :goto_2
    return-object v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getQueryParams()Lorg/springframework/util/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 585
    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 586
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 587
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 588
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lorg/springframework/web/util/UriComponents;->port:I

    add-int v0, v2, v3

    .line 589
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->path:Lorg/springframework/web/util/UriComponents$PathComponent;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 590
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 591
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 592
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 585
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 586
    goto :goto_1

    :cond_3
    move v2, v1

    .line 587
    goto :goto_2
.end method

.method public normalize()Lorg/springframework/web/util/UriComponents;
    .locals 11

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 467
    .local v10, normalizedPath:Ljava/lang/String;
    new-instance v0, Lorg/springframework/web/util/UriComponents;

    iget-object v1, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    iget-object v2, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    iget v4, p0, Lorg/springframework/web/util/UriComponents;->port:I

    new-instance v5, Lorg/springframework/web/util/UriComponents$FullPathComponent;

    invoke-direct {v5, v10}, Lorg/springframework/web/util/UriComponents$FullPathComponent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/springframework/web/util/UriComponents;->queryParams:Lorg/springframework/util/MultiValueMap;

    iget-object v7, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    iget-boolean v8, p0, Lorg/springframework/web/util/UriComponents;->encoded:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/springframework/web/util/UriComponents;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/springframework/web/util/UriComponents$PathComponent;Lorg/springframework/util/MultiValueMap;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->toUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 9

    .prologue
    const/16 v1, 0x2f

    .line 530
    :try_start_0
    iget-boolean v0, p0, Lorg/springframework/web/util/UriComponents;->encoded:Z

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->toUriString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 538
    :goto_0
    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getPort()I

    move-result v4

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v5           #path:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 543
    .local v8, ex:Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create URI object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toUriString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x2f

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v2, uriBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 487
    :cond_1
    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 489
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->userInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    :cond_2
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 493
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_3
    iget v3, p0, Lorg/springframework/web/util/UriComponents;->port:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 496
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    iget v3, p0, Lorg/springframework/web/util/UriComponents;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    :cond_4
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 503
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_5

    .line 504
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_6
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 511
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_7
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 516
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
