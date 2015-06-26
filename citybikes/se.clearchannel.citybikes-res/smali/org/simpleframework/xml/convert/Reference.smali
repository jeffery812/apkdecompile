.class Lorg/simpleframework/xml/convert/Reference;
.super Ljava/lang/Object;
.source "Reference.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private data:Ljava/lang/Object;

.field private value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;)V
    .locals 0
    .parameter "value"
    .parameter "data"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 55
    iput-object p2, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    .line 105
    return-void
.end method
