.class Lorg/simpleframework/xml/core/OverrideType;
.super Ljava/lang/Object;
.source "OverrideType.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Type;


# instance fields
.field private final override:Ljava/lang/Class;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 0
    .parameter "type"
    .parameter "override"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/simpleframework/xml/core/OverrideType;->override:Ljava/lang/Class;

    .line 56
    iput-object p1, p0, Lorg/simpleframework/xml/core/OverrideType;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 57
    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, label:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideType;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Type;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideType;->override:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/OverrideType;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
