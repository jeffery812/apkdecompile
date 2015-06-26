.class final Lorg/springframework/util/ReflectionUtils$1;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lorg/springframework/util/ReflectionUtils$MethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/springframework/util/ReflectionUtils;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$methods:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lorg/springframework/util/ReflectionUtils$1;->val$methods:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWith(Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "method"

    .prologue
    .line 486
    iget-object v0, p0, Lorg/springframework/util/ReflectionUtils$1;->val$methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method
