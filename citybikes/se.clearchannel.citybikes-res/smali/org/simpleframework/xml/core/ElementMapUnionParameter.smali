.class Lorg/simpleframework/xml/core/ElementMapUnionParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "ElementMapUnionParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/ElementMapUnion;Lorg/simpleframework/xml/ElementMap;Lorg/simpleframework/xml/stream/Format;I)V
    .locals 2
    .parameter "factory"
    .parameter "union"
    .parameter "element"
    .parameter "format"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    invoke-direct {v0, p3, p1, p5}, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;-><init>(Lorg/simpleframework/xml/ElementMap;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    .line 93
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapUnionLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/simpleframework/xml/core/ElementMapUnionLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMapUnion;Lorg/simpleframework/xml/ElementMap;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 95
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->path:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->type:Ljava/lang/Class;

    .line 97
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->name:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->key:Ljava/lang/Object;

    .line 99
    iput p5, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->index:I

    .line 100
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
