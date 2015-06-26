.class public Lorg/springframework/core/MethodParameter;
.super Ljava/lang/Object;
.source "MethodParameter.java"


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private genericParameterType:Ljava/lang/reflect/Type;

.field private hash:I

.field private final method:Ljava/lang/reflect/Method;

.field private nestingLevel:I

.field private parameterAnnotations:[Ljava/lang/annotation/Annotation;

.field private final parameterIndex:I

.field private parameterName:Ljava/lang/String;

.field private parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

.field private parameterType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field typeIndexesPerLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field typeVariableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;I)V
    .locals 1
    .parameter
    .parameter "parameterIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/core/MethodParameter;-><init>(Ljava/lang/reflect/Constructor;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;II)V
    .locals 1
    .parameter
    .parameter "parameterIndex"
    .parameter "nestingLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/springframework/core/MethodParameter;->hash:I

    .line 116
    const-string v0, "Constructor must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    .line 118
    iput p2, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    .line 119
    iput p3, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 1
    .parameter "method"
    .parameter "parameterIndex"

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/core/MethodParameter;-><init>(Ljava/lang/reflect/Method;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;II)V
    .locals 1
    .parameter "method"
    .parameter "parameterIndex"
    .parameter "nestingLevel"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/springframework/core/MethodParameter;->hash:I

    .line 91
    const-string v0, "Method must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    .line 93
    iput p2, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    .line 94
    iput p3, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/springframework/core/MethodParameter;)V
    .locals 1
    .parameter "original"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/springframework/core/MethodParameter;->hash:I

    .line 129
    const-string v0, "Original must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    .line 131
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    .line 132
    iget v0, p1, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    iput v0, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    .line 133
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    .line 134
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->genericParameterType:Ljava/lang/reflect/Type;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->genericParameterType:Ljava/lang/reflect/Type;

    .line 135
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->parameterAnnotations:[Ljava/lang/annotation/Annotation;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterAnnotations:[Ljava/lang/annotation/Annotation;

    .line 136
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    .line 137
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->parameterName:Ljava/lang/String;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterName:Ljava/lang/String;

    .line 138
    iget v0, p1, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    iput v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 139
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->typeIndexesPerLevel:Ljava/util/Map;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->typeIndexesPerLevel:Ljava/util/Map;

    .line 140
    iget-object v0, p1, Lorg/springframework/core/MethodParameter;->typeVariableMap:Ljava/util/Map;

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->typeVariableMap:Ljava/util/Map;

    .line 141
    iget v0, p1, Lorg/springframework/core/MethodParameter;->hash:I

    iput v0, p0, Lorg/springframework/core/MethodParameter;->hash:I

    .line 142
    return-void
.end method

.method public static forMethodOrConstructor(Ljava/lang/Object;I)Lorg/springframework/core/MethodParameter;
    .locals 3
    .parameter "methodOrConstructor"
    .parameter "parameterIndex"

    .prologue
    .line 406
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lorg/springframework/core/MethodParameter;

    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0
    invoke-direct {v0, p0, p1}, Lorg/springframework/core/MethodParameter;-><init>(Ljava/lang/reflect/Method;I)V

    .line 410
    :goto_0
    return-object v0

    .line 409
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Lorg/springframework/core/MethodParameter;

    check-cast p0, Ljava/lang/reflect/Constructor;

    .end local p0
    invoke-direct {v0, p0, p1}, Lorg/springframework/core/MethodParameter;-><init>(Ljava/lang/reflect/Constructor;I)V

    goto :goto_0

    .line 413
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given object ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is neither a Method nor a Constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAnnotatedElement()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method private getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    :goto_0
    check-cast v0, Ljava/lang/reflect/Member;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method private getTypeIndexesPerLevel()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->typeIndexesPerLevel:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->typeIndexesPerLevel:Ljava/util/Map;

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->typeIndexesPerLevel:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public decreaseNestingLevel()V
    .locals 2

    .prologue
    .line 343
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getTypeIndexesPerLevel()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 345
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    if-ne p0, p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    if-eqz p1, :cond_3

    instance-of v3, p1, Lorg/springframework/core/MethodParameter;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 424
    check-cast v0, Lorg/springframework/core/MethodParameter;

    .line 426
    .local v0, other:Lorg/springframework/core/MethodParameter;
    iget v3, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    iget v4, v0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 427
    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getMember()Ljava/lang/reflect/Member;

    move-result-object v3

    invoke-direct {v0}, Lorg/springframework/core/MethodParameter;->getMember()Ljava/lang/reflect/Member;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 433
    goto :goto_0

    .end local v0           #other:Lorg/springframework/core/MethodParameter;
    :cond_3
    move v1, v2

    .line 436
    goto :goto_0
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericParameterType()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->genericParameterType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 225
    iget v0, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    if-gez v0, :cond_2

    .line 226
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->genericParameterType:Ljava/lang/reflect/Type;

    .line 234
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->genericParameterType:Ljava/lang/reflect/Type;

    return-object v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    aget-object v0, v0, v1

    :goto_2
    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->genericParameterType:Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    aget-object v0, v0, v1

    goto :goto_2
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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
    .line 250
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getAnnotatedElement()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getAnnotatedElement()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getNestingLevel()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    return v0
.end method

.method public getParameterAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6
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
    .line 277
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/springframework/core/MethodParameter;->getParameterAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 278
    .local v1, anns:[Ljava/lang/annotation/Annotation;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/annotation/Annotation;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 279
    .local v0, ann:Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    .end local v0           #ann:Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v0

    .line 278
    .restart local v0       #ann:Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v0           #ann:Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParameterAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterAnnotations:[Ljava/lang/annotation/Annotation;

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 260
    .local v0, annotationArray:[[Ljava/lang/annotation/Annotation;
    :goto_0
    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 261
    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterAnnotations:[Ljava/lang/annotation/Annotation;

    .line 267
    .end local v0           #annotationArray:[[Ljava/lang/annotation/Annotation;
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterAnnotations:[Ljava/lang/annotation/Annotation;

    return-object v1

    .line 258
    :cond_1
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    .line 264
    .restart local v0       #annotationArray:[[Ljava/lang/annotation/Annotation;
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    iput-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterAnnotations:[Ljava/lang/annotation/Annotation;

    goto :goto_1
.end method

.method public getParameterIndex()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    iget-object v2, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    invoke-interface {v1, v2}, Lorg/springframework/core/ParameterNameDiscoverer;->getParameterNames(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, parameterNames:[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 323
    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterName:Ljava/lang/String;

    .line 325
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    .line 327
    .end local v0           #parameterNames:[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterName:Ljava/lang/String;

    return-object v1

    .line 319
    :cond_2
    iget-object v1, p0, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    iget-object v2, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    invoke-interface {v1, v2}, Lorg/springframework/core/ParameterNameDiscoverer;->getParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 207
    iget v0, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    if-gez v0, :cond_2

    .line 208
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    .line 216
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    return-object v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    aget-object v0, v0, v1

    :goto_2
    iput-object v0, p0, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/springframework/core/MethodParameter;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    aget-object v0, v0, v1

    goto :goto_2
.end method

.method public getTypeIndexForCurrentLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    invoke-virtual {p0, v0}, Lorg/springframework/core/MethodParameter;->getTypeIndexForLevel(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTypeIndexForLevel(I)Ljava/lang/Integer;
    .locals 2
    .parameter "nestingLevel"

    .prologue
    .line 383
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getTypeIndexesPerLevel()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasParameterAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/springframework/core/MethodParameter;->getParameterAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParameterAnnotations()Z
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/springframework/core/MethodParameter;->getParameterAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 442
    iget v0, p0, Lorg/springframework/core/MethodParameter;->hash:I

    .line 443
    .local v0, result:I
    if-nez v0, :cond_0

    .line 444
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 445
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/springframework/core/MethodParameter;->parameterIndex:I

    add-int v0, v1, v2

    .line 446
    iput v0, p0, Lorg/springframework/core/MethodParameter;->hash:I

    .line 448
    :cond_0
    return v0
.end method

.method public increaseNestingLevel()V
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    .line 336
    return-void
.end method

.method public initParameterNameDiscovery(Lorg/springframework/core/ParameterNameDiscoverer;)V
    .locals 0
    .parameter "parameterNameDiscoverer"

    .prologue
    .line 307
    iput-object p1, p0, Lorg/springframework/core/MethodParameter;->parameterNameDiscoverer:Lorg/springframework/core/ParameterNameDiscoverer;

    .line 308
    return-void
.end method

.method setParameterType(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, parameterType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/springframework/core/MethodParameter;->parameterType:Ljava/lang/Class;

    .line 199
    return-void
.end method

.method public setTypeIndexForCurrentLevel(I)V
    .locals 3
    .parameter "typeIndex"

    .prologue
    .line 363
    invoke-direct {p0}, Lorg/springframework/core/MethodParameter;->getTypeIndexesPerLevel()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lorg/springframework/core/MethodParameter;->nestingLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method
