.class Lorg/simpleframework/xml/core/Revision;
.super Ljava/lang/Object;
.source "Revision.java"


# instance fields
.field private equal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    .line 42
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "expected"
    .parameter "current"

    .prologue
    .line 66
    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    .line 71
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return v0

    .line 68
    :cond_1
    if-eqz p1, :cond_0

    .line 69
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    goto :goto_0
.end method

.method public getDefault()D
    .locals 2

    .prologue
    .line 52
    const-wide/high16 v0, 0x3ff0

    return-wide v0
.end method

.method public isEqual()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Revision;->equal:Z

    return v0
.end method
