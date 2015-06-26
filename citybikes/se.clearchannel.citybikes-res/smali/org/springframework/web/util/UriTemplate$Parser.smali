.class Lorg/springframework/web/util/UriTemplate$Parser;
.super Ljava/lang/Object;
.source "UriTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# instance fields
.field private final patternBuilder:Ljava/lang/StringBuilder;

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
.method private constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "uriTemplate"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->variableNames:Ljava/util/List;

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    .line 204
    const-string v7, "\'uriTemplate\' must not be null"

    invoke-static {p1, v7}, Lorg/springframework/util/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lorg/springframework/web/util/UriTemplate;->access$300()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 206
    .local v3, m:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 207
    .local v1, end:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 208
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-direct {p0, p1, v1, v8}, Lorg/springframework/web/util/UriTemplate$Parser;->quote(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, match:Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 211
    .local v0, colonIdx:I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 212
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    const-string v8, "(.*)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->variableNames:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 226
    goto :goto_0

    .line 215
    :cond_0
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 216
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No custom regular expression specified after \':\' in \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_1
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, variablePattern:Ljava/lang/String;
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, variableName:Ljava/lang/String;
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->variableNames:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v0           #colonIdx:I
    .end local v4           #match:Ljava/lang/String;
    .end local v5           #variableName:Ljava/lang/String;
    .end local v6           #variablePattern:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, p1, v1, v8}, Lorg/springframework/web/util/UriTemplate$Parser;->quote(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 229
    .local v2, lastIdx:I
    if-ltz v2, :cond_3

    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_3

    .line 230
    iget-object v7, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 232
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/springframework/web/util/UriTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriTemplate$Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/springframework/web/util/UriTemplate$Parser;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/springframework/web/util/UriTemplate$Parser;->getVariableNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/springframework/web/util/UriTemplate$Parser;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/springframework/web/util/UriTemplate$Parser;->getMatchPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getMatchPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/springframework/web/util/UriTemplate$Parser;->patternBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getVariableNames()Ljava/util/List;
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
    .line 242
    iget-object v0, p0, Lorg/springframework/web/util/UriTemplate$Parser;->variableNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private quote(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .parameter "fullPath"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 235
    if-ne p2, p3, :cond_0

    .line 236
    const-string v0, ""

    .line 238
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
