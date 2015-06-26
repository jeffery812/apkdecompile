.class abstract Lorg/simpleframework/xml/stream/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field protected builder:Ljava/lang/StringBuilder;

.field protected count:I

.field protected off:I

.field protected text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    .line 77
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    array-length v0, v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    .line 78
    return-void
.end method

.method private acronym()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 145
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 146
    .local v1, mark:I
    const/4 v2, 0x0

    .line 148
    .local v2, size:I
    :goto_0
    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v1, v4, :cond_0

    .line 149
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v0, v4, v1

    .line 151
    .local v0, ch:C
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    goto :goto_0

    .line 158
    .end local v0           #ch:C
    :cond_0
    if-le v2, v3, :cond_2

    .line 159
    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v1, v4, :cond_1

    .line 160
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    add-int/lit8 v5, v1, -0x1

    aget-char v0, v4, v5

    .line 162
    .restart local v0       #ch:C
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    add-int/lit8 v1, v1, -0x1

    .line 166
    .end local v0           #ch:C
    :cond_1
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v6, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v6, v1, v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    .line 167
    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 169
    :cond_2
    if-le v2, v3, :cond_3

    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 237
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 224
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpper(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 250
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private number()Z
    .locals 6

    .prologue
    .line 181
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 182
    .local v1, mark:I
    const/4 v2, 0x0

    .line 184
    .local v2, size:I
    :goto_0
    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v1, v3, :cond_0

    .line 185
    iget-object v3, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v0, v3, v1

    .line 187
    .local v0, ch:C
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 192
    add-int/lit8 v1, v1, 0x1

    .line 193
    goto :goto_0

    .line 194
    .end local v0           #ch:C
    :cond_0
    if-lez v2, :cond_1

    .line 195
    iget-object v3, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    .line 197
    :cond_1
    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 198
    if-lez v2, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private token()V
    .locals 5

    .prologue
    .line 114
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 116
    .local v1, mark:I
    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v0, v2, v1

    .line 119
    .local v0, ch:C
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    .end local v0           #ch:C
    :cond_0
    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-le v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/simpleframework/xml/stream/Splitter;->parse([CII)V

    .line 131
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    .line 133
    :cond_1
    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 134
    return-void

    .line 122
    .restart local v0       #ch:C
    :cond_2
    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-le v1, v2, :cond_3

    .line 123
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 128
    goto :goto_0
.end method


# virtual methods
.method protected abstract commit([CII)V
.end method

.method protected abstract parse([CII)V
.end method

.method public process()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    :cond_0
    :goto_0
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v1, v2, :cond_3

    .line 90
    :goto_1
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    aget-char v0, v1, v2

    .line 93
    .local v0, ch:C
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isSpecial(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    .end local v0           #ch:C
    :cond_1
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->acronym()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->token()V

    .line 100
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->number()Z

    goto :goto_0

    .line 96
    .restart local v0       #ch:C
    :cond_2
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    goto :goto_1

    .line 103
    .end local v0           #ch:C
    :cond_3
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toLower(C)C
    .locals 1
    .parameter "ch"

    .prologue
    .line 276
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method protected toUpper(C)C
    .locals 1
    .parameter "ch"

    .prologue
    .line 263
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0
.end method
