.class public Lorg/springframework/web/util/UriTemplate;
.super Ljava/lang/Object;
.source "UriTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/web/util/UriTemplate$1;,
        Lorg/springframework/web/util/UriTemplate$Parser;
    }
.end annotation


# static fields
.field private static final DEFAULT_VARIABLE_PATTERN:Ljava/lang/String; = "(.*)"

.field private static final NAMES_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final matchPattern:Ljava/util/regex/Pattern;

.field private final uriComponents:Lorg/springframework/web/util/UriComponents;

.field private final uriTemplate:Ljava/lang/String;

.field private final variableNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "\\{([^/]+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/springframework/web/util/UriTemplate;->NAMES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "uriTemplate"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/springframework/web/util/UriTemplate$Parser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/springframework/web/util/UriTemplate$Parser;-><init>(Ljava/lang/String;Lorg/springframework/web/util/UriTemplate$1;)V

    .line 69
    .local v0, parser:Lorg/springframework/web/util/UriTemplate$Parser;
    iput-object p1, p0, Lorg/springframework/web/util/UriTemplate;->uriTemplate:Ljava/lang/String;

    .line 70
    #calls: Lorg/springframework/web/util/UriTemplate$Parser;->getVariableNames()Ljava/util/List;
    invoke-static {v0}, Lorg/springframework/web/util/UriTemplate$Parser;->access$100(Lorg/springframework/web/util/UriTemplate$Parser;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/springframework/web/util/UriTemplate;->variableNames:Ljava/util/List;

    .line 71
    #calls: Lorg/springframework/web/util/UriTemplate$Parser;->getMatchPattern()Ljava/util/regex/Pattern;
    invoke-static {v0}, Lorg/springframework/web/util/UriTemplate$Parser;->access$200(Lorg/springframework/web/util/UriTemplate$Parser;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/springframework/web/util/UriTemplate;->matchPattern:Ljava/util/regex/Pattern;

    .line 72
    invoke-static {p1}, Lorg/springframework/web/util/UriComponentsBuilder;->fromUriString(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/springframework/web/util/UriComponentsBuilder;->build()Lorg/springframework/web/util/UriComponents;

    move-result-object v1

    iput-object v1, p0, Lorg/springframework/web/util/UriTemplate;->uriComponents:Lorg/springframework/web/util/UriComponents;

    .line 73
    return-void
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/springframework/web/util/UriTemplate;->NAMES_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method protected encodeUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 5
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lorg/springframework/web/util/UriUtils;->encodeUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, encoded:Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .line 181
    .end local v0           #encoded:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 183
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 184
    .end local v1           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, ex:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create URI from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expand(Ljava/util/Map;)Ljava/net/URI;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, uriVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v2, p0, Lorg/springframework/web/util/UriTemplate;->uriComponents:Lorg/springframework/web/util/UriComponents;

    invoke-virtual {v2, p1}, Lorg/springframework/web/util/UriComponents;->expand(Ljava/util/Map;)Lorg/springframework/web/util/UriComponents;

    move-result-object v1

    .line 104
    .local v1, expandedComponents:Lorg/springframework/web/util/UriComponents;
    invoke-virtual {v1}, Lorg/springframework/web/util/UriComponents;->encode()Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    .line 105
    .local v0, encodedComponents:Lorg/springframework/web/util/UriComponents;
    invoke-virtual {v0}, Lorg/springframework/web/util/UriComponents;->toUri()Ljava/net/URI;

    move-result-object v2

    return-object v2
.end method

.method public varargs expand([Ljava/lang/Object;)Ljava/net/URI;
    .locals 3
    .parameter "uriVariableValues"

    .prologue
    .line 123
    iget-object v2, p0, Lorg/springframework/web/util/UriTemplate;->uriComponents:Lorg/springframework/web/util/UriComponents;

    invoke-virtual {v2, p1}, Lorg/springframework/web/util/UriComponents;->expand([Ljava/lang/Object;)Lorg/springframework/web/util/UriComponents;

    move-result-object v1

    .line 124
    .local v1, expandedComponents:Lorg/springframework/web/util/UriComponents;
    invoke-virtual {v1}, Lorg/springframework/web/util/UriComponents;->encode()Lorg/springframework/web/util/UriComponents;

    move-result-object v0

    .line 125
    .local v0, encodedComponents:Lorg/springframework/web/util/UriComponents;
    invoke-virtual {v0}, Lorg/springframework/web/util/UriComponents;->toUri()Ljava/net/URI;

    move-result-object v2

    return-object v2
.end method

.method public getVariableNames()Ljava/util/List;
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
    .line 80
    iget-object v0, p0, Lorg/springframework/web/util/UriTemplate;->variableNames:Ljava/util/List;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const-string v5, "\'uri\' must not be null"

    invoke-static {p1, v5}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lorg/springframework/web/util/UriTemplate;->variableNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 158
    .local v3, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/springframework/web/util/UriTemplate;->matchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 159
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-gt v0, v5, :cond_0

    .line 161
    iget-object v5, p0, Lorg/springframework/web/util/UriTemplate;->variableNames:Ljava/util/List;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, value:Ljava/lang/String;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0           #i:I
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/springframework/web/util/UriTemplate;->matchPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 140
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/springframework/web/util/UriTemplate;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method
