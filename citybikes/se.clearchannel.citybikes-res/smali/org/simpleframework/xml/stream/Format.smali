.class public Lorg/simpleframework/xml/stream/Format;
.super Ljava/lang/Object;
.source "Format.java"


# instance fields
.field private final indent:I

.field private final prolog:Ljava/lang/String;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final verbosity:Lorg/simpleframework/xml/stream/Verbosity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "indent"

    .prologue
    .line 77
    const/4 v0, 0x0

    new-instance v1, Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/IdentityStyle;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "indent"
    .parameter "prolog"

    .prologue
    .line 102
    new-instance v0, Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/IdentityStyle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V
    .locals 1
    .parameter "indent"
    .parameter "prolog"
    .parameter "style"

    .prologue
    .line 193
    sget-object v0, Lorg/simpleframework/xml/stream/Verbosity;->HIGH:Lorg/simpleframework/xml/stream/Verbosity;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V

    .line 194
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V
    .locals 0
    .parameter "indent"
    .parameter "prolog"
    .parameter "style"
    .parameter "verbosity"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p4, p0, Lorg/simpleframework/xml/stream/Format;->verbosity:Lorg/simpleframework/xml/stream/Verbosity;

    .line 209
    iput-object p2, p0, Lorg/simpleframework/xml/stream/Format;->prolog:Ljava/lang/String;

    .line 210
    iput p1, p0, Lorg/simpleframework/xml/stream/Format;->indent:I

    .line 211
    iput-object p3, p0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/Style;

    .line 212
    return-void
.end method

.method public constructor <init>(ILorg/simpleframework/xml/stream/Style;)V
    .locals 1
    .parameter "indent"
    .parameter "style"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;)V

    .line 166
    return-void
.end method

.method public constructor <init>(ILorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V
    .locals 1
    .parameter "indent"
    .parameter "style"
    .parameter "verbosity"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V

    .line 180
    return-void
.end method

.method public constructor <init>(ILorg/simpleframework/xml/stream/Verbosity;)V
    .locals 1
    .parameter "indent"
    .parameter "verbosity"

    .prologue
    .line 127
    new-instance v0, Lorg/simpleframework/xml/stream/IdentityStyle;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/IdentityStyle;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/stream/Format;-><init>(ILorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "prolog"

    .prologue
    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/stream/Format;-><init>(ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Style;)V
    .locals 1
    .parameter "style"

    .prologue
    .line 139
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/stream/Format;-><init>(ILorg/simpleframework/xml/stream/Style;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V
    .locals 1
    .parameter "style"
    .parameter "verbosity"

    .prologue
    .line 152
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/stream/Format;-><init>(ILorg/simpleframework/xml/stream/Style;Lorg/simpleframework/xml/stream/Verbosity;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Verbosity;)V
    .locals 1
    .parameter "verbosity"

    .prologue
    .line 114
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/stream/Format;-><init>(ILorg/simpleframework/xml/stream/Verbosity;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getIndent()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lorg/simpleframework/xml/stream/Format;->indent:I

    return v0
.end method

.method public getProlog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Format;->prolog:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Format;->style:Lorg/simpleframework/xml/stream/Style;

    return-object v0
.end method

.method public getVerbosity()Lorg/simpleframework/xml/stream/Verbosity;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Format;->verbosity:Lorg/simpleframework/xml/stream/Verbosity;

    return-object v0
.end method
