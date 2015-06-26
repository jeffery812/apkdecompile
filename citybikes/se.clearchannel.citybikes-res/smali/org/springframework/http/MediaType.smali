.class public Lorg/springframework/http/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/springframework/http/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Lorg/springframework/http/MediaType; = null

.field public static final ALL_VALUE:Ljava/lang/String; = "*/*"

.field public static final APPLICATION_ATOM_XML:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_ATOM_XML_VALUE:Ljava/lang/String; = "application/atom+xml"

.field public static final APPLICATION_FORM_URLENCODED:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_FORM_URLENCODED_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final APPLICATION_JSON:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_JSON_VALUE:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_OCTET_STREAM_VALUE:Ljava/lang/String; = "application/octet-stream"

.field public static final APPLICATION_RSS_XML:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_RSS_XML_VALUE:Ljava/lang/String; = "application/rss+xml"

.field public static final APPLICATION_WILDCARD_XML:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_WILDCARD_XML_VALUE:Ljava/lang/String; = "application/*+xml"

.field public static final APPLICATION_XHTML_XML:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_XHTML_XML_VALUE:Ljava/lang/String; = "application/xhtml+xml"

.field public static final APPLICATION_XML:Lorg/springframework/http/MediaType; = null

.field public static final APPLICATION_XML_VALUE:Ljava/lang/String; = "application/xml"

.field public static final IMAGE_GIF:Lorg/springframework/http/MediaType; = null

.field public static final IMAGE_GIF_VALUE:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Lorg/springframework/http/MediaType; = null

.field public static final IMAGE_JPEG_VALUE:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_PNG:Lorg/springframework/http/MediaType; = null

.field public static final IMAGE_PNG_VALUE:Ljava/lang/String; = "image/png"

.field public static final MULTIPART_FORM_DATA:Lorg/springframework/http/MediaType; = null

.field public static final MULTIPART_FORM_DATA_VALUE:Ljava/lang/String; = "multipart/form-data"

.field private static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static final PARAM_QUALITY_FACTOR:Ljava/lang/String; = "q"

.field public static final QUALITY_VALUE_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIFICITY_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_HTML:Lorg/springframework/http/MediaType; = null

.field public static final TEXT_HTML_VALUE:Ljava/lang/String; = "text/html"

.field public static final TEXT_PLAIN:Lorg/springframework/http/MediaType; = null

.field public static final TEXT_PLAIN_VALUE:Ljava/lang/String; = "text/plain"

.field public static final TEXT_XML:Lorg/springframework/http/MediaType; = null

.field public static final TEXT_XML_VALUE:Ljava/lang/String; = "text/xml"

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

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    .line 232
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 233
    .local v0, ctl:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/16 v3, 0x7f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 238
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 239
    .local v2, separators:Ljava/util/BitSet;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 240
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 241
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 242
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 243
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 244
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 245
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 246
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 247
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 248
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 249
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 250
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 251
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 252
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 253
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 254
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 255
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 256
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 257
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 259
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lorg/springframework/http/MediaType;->TOKEN:Ljava/util/BitSet;

    .line 260
    sget-object v3, Lorg/springframework/http/MediaType;->TOKEN:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/BitSet;->set(II)V

    .line 261
    sget-object v3, Lorg/springframework/http/MediaType;->TOKEN:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 262
    sget-object v3, Lorg/springframework/http/MediaType;->TOKEN:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 264
    const-string v3, "*/*"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    .line 265
    const-string v3, "application/atom+xml"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_ATOM_XML:Lorg/springframework/http/MediaType;

    .line 266
    const-string v3, "application/rss+xml"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_RSS_XML:Lorg/springframework/http/MediaType;

    .line 267
    const-string v3, "application/x-www-form-urlencoded"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_FORM_URLENCODED:Lorg/springframework/http/MediaType;

    .line 268
    const-string v3, "application/json"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_JSON:Lorg/springframework/http/MediaType;

    .line 269
    const-string v3, "application/octet-stream"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_OCTET_STREAM:Lorg/springframework/http/MediaType;

    .line 270
    const-string v3, "application/xhtml+xml"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_XHTML_XML:Lorg/springframework/http/MediaType;

    .line 271
    const-string v3, "application/xml"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_XML:Lorg/springframework/http/MediaType;

    .line 272
    const-string v3, "application/*+xml"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->APPLICATION_WILDCARD_XML:Lorg/springframework/http/MediaType;

    .line 273
    const-string v3, "image/gif"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->IMAGE_GIF:Lorg/springframework/http/MediaType;

    .line 274
    const-string v3, "image/jpeg"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->IMAGE_JPEG:Lorg/springframework/http/MediaType;

    .line 275
    const-string v3, "image/png"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->IMAGE_PNG:Lorg/springframework/http/MediaType;

    .line 276
    const-string v3, "multipart/form-data"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->MULTIPART_FORM_DATA:Lorg/springframework/http/MediaType;

    .line 277
    const-string v3, "text/html"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->TEXT_HTML:Lorg/springframework/http/MediaType;

    .line 278
    const-string v3, "text/plain"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->TEXT_PLAIN:Lorg/springframework/http/MediaType;

    .line 279
    const-string v3, "text/xml"

    invoke-static {v3}, Lorg/springframework/http/MediaType;->valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v3

    sput-object v3, Lorg/springframework/http/MediaType;->TEXT_XML:Lorg/springframework/http/MediaType;

    .line 799
    new-instance v3, Lorg/springframework/http/MediaType$1;

    invoke-direct {v3}, Lorg/springframework/http/MediaType$1;-><init>()V

    sput-object v3, Lorg/springframework/http/MediaType;->SPECIFICITY_COMPARATOR:Ljava/util/Comparator;

    .line 836
    new-instance v3, Lorg/springframework/http/MediaType$2;

    invoke-direct {v3}, Lorg/springframework/http/MediaType$2;-><init>()V

    sput-object v3, Lorg/springframework/http/MediaType;->QUALITY_VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 291
    const-string v0, "*"

    invoke-direct {p0, p1, v0}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2
    .parameter "type"
    .parameter "subtype"
    .parameter "qualityValue"

    .prologue
    .line 326
    const-string v0, "q"

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"
    .parameter "charSet"

    .prologue
    .line 314
    const-string v0, "charset"

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "type"
    .parameter "subtype"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p3, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const-string v5, "\'type\' must not be empty"

    invoke-static {p1, v5}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v5, "\'subtype\' must not be empty"

    invoke-static {p2, v5}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, p1}, Lorg/springframework/http/MediaType;->checkToken(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p2}, Lorg/springframework/http/MediaType;->checkToken(Ljava/lang/String;)V

    .line 352
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    .line 353
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    .line 354
    invoke-static {p3}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    new-instance v3, Lorg/springframework/util/LinkedCaseInsensitiveMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Lorg/springframework/util/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    .line 356
    .local v3, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 357
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, attribute:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 359
    .local v4, value:Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lorg/springframework/http/MediaType;->checkParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    .end local v0           #attribute:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    .line 366
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 364
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/springframework/http/MediaType;Ljava/util/Map;)V
    .locals 2
    .parameter "other"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/http/MediaType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    return-void
.end method

.method static synthetic access$000(Lorg/springframework/http/MediaType;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method private appendTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 625
    iget-object v0, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    iget-object v0, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v0, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lorg/springframework/http/MediaType;->appendTo(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 629
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
    .line 632
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

    .line 633
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x3b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 638
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private checkParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 383
    const-string v2, "parameter attribute must not be empty"

    invoke-static {p1, v2}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "parameter value must not be empty"

    invoke-static {p2, v2}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1}, Lorg/springframework/http/MediaType;->checkToken(Ljava/lang/String;)V

    .line 386
    const-string v2, "q"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-direct {p0, p2}, Lorg/springframework/http/MediaType;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 388
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 389
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

    .line 396
    .end local v0           #d:D
    :cond_0
    :goto_1
    return-void

    .line 389
    .restart local v0       #d:D
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 390
    .end local v0           #d:D
    :cond_2
    const-string v2, "charset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    invoke-direct {p0, p2}, Lorg/springframework/http/MediaType;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 392
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    goto :goto_1

    .line 393
    :cond_3
    invoke-direct {p0, p2}, Lorg/springframework/http/MediaType;->isQuotedString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    invoke-direct {p0, p2}, Lorg/springframework/http/MediaType;->checkToken(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkToken(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 374
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 375
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 376
    .local v0, ch:C
    sget-object v2, Lorg/springframework/http/MediaType;->TOKEN:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
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

    .line 374
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0           #ch:C
    :cond_1
    return-void
.end method

.method private isQuotedString(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 399
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

.method public static parseMediaType(Ljava/lang/String;)Lorg/springframework/http/MediaType;
    .locals 15
    .parameter "mediaType"

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 656
    const-string v11, "\'mediaType\' must not be empty"

    invoke-static {p0, v11}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v11, ";"

    invoke-static {p0, v11}, Lorg/springframework/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 659
    .local v6, parts:[Ljava/lang/String;
    aget-object v11, v6, v13

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, fullType:Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 662
    const-string v2, "*/*"

    .line 664
    :cond_0
    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 665
    .local v7, subIndex:I
    if-ne v7, v14, :cond_1

    .line 666
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" does not contain \'/\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 668
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v7, v11, :cond_2

    .line 669
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" does not contain subtype after \'/\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 671
    :cond_2
    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 672
    .local v9, type:Ljava/lang/String;
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 673
    .local v8, subtype:Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "*"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 674
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "A wildcard type is legal only in \'*/*\' (all media types)."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 677
    :cond_3
    const/4 v5, 0x0

    .line 678
    .local v5, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v11, v6

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 679
    new-instance v5, Ljava/util/LinkedHashMap;

    .end local v5           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v5, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 680
    .restart local v5       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    array-length v11, v6

    if-ge v3, v11, :cond_5

    .line 681
    aget-object v4, v6, v3

    .line 682
    .local v4, parameter:Ljava/lang/String;
    const/16 v11, 0x3d

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 683
    .local v1, eqIndex:I
    if-eq v1, v14, :cond_4

    .line 684
    invoke-virtual {v4, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, attribute:Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, value:Ljava/lang/String;
    invoke-interface {v5, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .end local v0           #attribute:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    .end local v1           #eqIndex:I
    .end local v3           #i:I
    .end local v4           #parameter:Ljava/lang/String;
    :cond_5
    new-instance v11, Lorg/springframework/http/MediaType;

    invoke-direct {v11, v9, v8, v5}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v11
.end method

.method public static parseMediaTypes(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "mediaTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 705
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 712
    :cond_0
    return-object v3

    .line 707
    :cond_1
    const-string v6, ",\\s*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 708
    .local v5, tokens:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 709
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 710
    .local v4, token:Ljava/lang/String;
    invoke-static {v4}, Lorg/springframework/http/MediaType;->parseMediaType(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
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
            "Lorg/springframework/http/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p0, mediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    const-string v0, "\'mediaTypes\' must not be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 791
    sget-object v0, Lorg/springframework/http/MediaType;->QUALITY_VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 793
    :cond_0
    return-void
.end method

.method public static sortBySpecificity(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, mediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    const-string v0, "\'mediaTypes\' must not be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 763
    sget-object v0, Lorg/springframework/http/MediaType;->SPECIFICITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 765
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
            "Lorg/springframework/http/MediaType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, mediaTypes:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/springframework/http/MediaType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/springframework/http/MediaType;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/http/MediaType;

    .line 727
    .local v2, mediaType:Lorg/springframework/http/MediaType;
    invoke-direct {v2, v0}, Lorg/springframework/http/MediaType;->appendTo(Ljava/lang/StringBuilder;)V

    .line 728
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 732
    .end local v2           #mediaType:Lorg/springframework/http/MediaType;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 403
    if-nez p1, :cond_1

    .line 404
    const/4 p1, 0x0

    .line 406
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    invoke-direct {p0, p1}, Lorg/springframework/http/MediaType;->isQuotedString(Ljava/lang/String;)Z

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

.method public static valueOf(Ljava/lang/String;)Lorg/springframework/http/MediaType;
    .locals 1
    .parameter "value"

    .prologue
    .line 646
    invoke-static {p0}, Lorg/springframework/http/MediaType;->parseMediaType(Ljava/lang/String;)Lorg/springframework/http/MediaType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Lorg/springframework/http/MediaType;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/http/MediaType;->compareTo(Lorg/springframework/http/MediaType;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/springframework/http/MediaType;)I
    .locals 11
    .parameter "other"

    .prologue
    .line 559
    iget-object v9, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    iget-object v10, p1, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, comp:I
    if-eqz v0, :cond_0

    move v9, v0

    .line 594
    :goto_0
    return v9

    .line 563
    :cond_0
    iget-object v9, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    iget-object v10, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 564
    if-eqz v0, :cond_1

    move v9, v0

    .line 565
    goto :goto_0

    .line 567
    :cond_1
    iget-object v9, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    iget-object v10, p1, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    sub-int v0, v9, v10

    .line 568
    if-eqz v0, :cond_2

    move v9, v0

    .line 569
    goto :goto_0

    .line 571
    :cond_2
    new-instance v6, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 572
    .local v6, thisAttributes:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 573
    new-instance v2, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 574
    .local v2, otherAttributes:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v9, p1, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 576
    .local v7, thisAttributesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 577
    .local v3, otherAttributesIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 578
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 579
    .local v5, thisAttribute:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 580
    .local v1, otherAttribute:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 581
    if-eqz v0, :cond_4

    move v9, v0

    .line 582
    goto :goto_0

    .line 584
    :cond_4
    iget-object v9, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 585
    .local v8, thisValue:Ljava/lang/String;
    iget-object v9, p1, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 586
    .local v4, otherValue:Ljava/lang/String;
    if-nez v4, :cond_5

    .line 587
    const-string v4, ""

    .line 589
    :cond_5
    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 590
    if-eqz v0, :cond_3

    move v9, v0

    .line 591
    goto :goto_0

    .line 594
    .end local v1           #otherAttribute:Ljava/lang/String;
    .end local v4           #otherValue:Ljava/lang/String;
    .end local v5           #thisAttribute:Ljava/lang/String;
    .end local v8           #thisValue:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    if-ne p0, p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v1

    .line 602
    :cond_1
    instance-of v3, p1, Lorg/springframework/http/MediaType;

    if-nez v3, :cond_2

    move v1, v2

    .line 603
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 605
    check-cast v0, Lorg/springframework/http/MediaType;

    .line 606
    .local v0, otherType:Lorg/springframework/http/MediaType;
    iget-object v3, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    iget-object v4, v0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCharSet()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 452
    const-string v1, "charset"

    invoke-virtual {p0, v1}, Lorg/springframework/http/MediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, charSet:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/springframework/http/MediaType;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 471
    iget-object v0, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getQualityValue()D
    .locals 3

    .prologue
    .line 461
    const-string v1, "q"

    invoke-virtual {p0, v1}, Lorg/springframework/http/MediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, qualityFactory:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/springframework/http/MediaType;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, 0x3ff0

    goto :goto_0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 611
    iget-object v1, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 612
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 613
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/springframework/http/MediaType;->parameters:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 614
    return v0
.end method

.method public includes(Lorg/springframework/http/MediaType;)Z
    .locals 11
    .parameter "other"

    .prologue
    const/16 v10, 0x2b

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 491
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v5

    .line 494
    :cond_1
    invoke-virtual {p0}, Lorg/springframework/http/MediaType;->isWildcardType()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 496
    goto :goto_0

    .line 497
    :cond_2
    iget-object v7, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    iget-object v8, p1, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 498
    iget-object v7, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    iget-object v8, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lorg/springframework/http/MediaType;->isWildcardSubtype()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move v5, v6

    .line 499
    goto :goto_0

    .line 502
    :cond_4
    iget-object v7, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 503
    .local v2, thisPlusIdx:I
    iget-object v7, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 504
    .local v0, otherPlusIdx:I
    if-eq v2, v9, :cond_0

    if-eq v0, v9, :cond_0

    .line 505
    iget-object v7, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, thisSubtypeNoSuffix:Ljava/lang/String;
    iget-object v7, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, thisSubtypeSuffix:Ljava/lang/String;
    iget-object v7, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, otherSubtypeSuffix:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "*"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    .line 509
    goto :goto_0
.end method

.method public isCompatibleWith(Lorg/springframework/http/MediaType;)Z
    .locals 12
    .parameter "other"

    .prologue
    const/16 v11, 0x2b

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v6

    .line 529
    :cond_1
    invoke-virtual {p0}, Lorg/springframework/http/MediaType;->isWildcardType()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->isWildcardType()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v6, v7

    .line 530
    goto :goto_0

    .line 531
    :cond_3
    iget-object v8, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    iget-object v9, p1, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 532
    iget-object v8, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    iget-object v9, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lorg/springframework/http/MediaType;->isWildcardSubtype()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->isWildcardSubtype()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move v6, v7

    .line 533
    goto :goto_0

    .line 536
    :cond_5
    iget-object v8, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 537
    .local v3, thisPlusIdx:I
    iget-object v8, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 538
    .local v0, otherPlusIdx:I
    if-eq v3, v10, :cond_0

    if-eq v0, v10, :cond_0

    .line 539
    iget-object v8, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, thisSubtypeNoSuffix:Ljava/lang/String;
    iget-object v8, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, otherSubtypeNoSuffix:Ljava/lang/String;
    iget-object v8, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 543
    .local v5, thisSubtypeSuffix:Ljava/lang/String;
    iget-object v8, p1, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, otherSubtypeSuffix:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "*"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "*"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_6
    move v6, v7

    .line 546
    goto :goto_0
.end method

.method public isConcrete()Z
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/springframework/http/MediaType;->isWildcardType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/springframework/http/MediaType;->isWildcardSubtype()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWildcardSubtype()Z
    .locals 2

    .prologue
    .line 435
    const-string v0, "*"

    iget-object v1, p0, Lorg/springframework/http/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWildcardType()Z
    .locals 2

    .prologue
    .line 420
    const-string v0, "*"

    iget-object v1, p0, Lorg/springframework/http/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/springframework/http/MediaType;->appendTo(Ljava/lang/StringBuilder;)V

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
