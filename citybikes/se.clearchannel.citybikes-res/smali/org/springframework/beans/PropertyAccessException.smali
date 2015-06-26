.class public abstract Lorg/springframework/beans/PropertyAccessException;
.super Lorg/springframework/beans/BeansException;
.source "PropertyAccessException.java"

# interfaces
.implements Lorg/springframework/core/ErrorCoded;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient propertyChangeEvent:Ljava/beans/PropertyChangeEvent;


# direct methods
.method public constructor <init>(Ljava/beans/PropertyChangeEvent;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "propertyChangeEvent"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 46
    invoke-direct {p0, p2, p3}, Lorg/springframework/beans/BeansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput-object p1, p0, Lorg/springframework/beans/PropertyAccessException;->propertyChangeEvent:Ljava/beans/PropertyChangeEvent;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/springframework/beans/BeansException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getPropertyChangeEvent()Ljava/beans/PropertyChangeEvent;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/springframework/beans/PropertyAccessException;->propertyChangeEvent:Ljava/beans/PropertyChangeEvent;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/springframework/beans/PropertyAccessException;->propertyChangeEvent:Ljava/beans/PropertyChangeEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/beans/PropertyAccessException;->propertyChangeEvent:Ljava/beans/PropertyChangeEvent;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/springframework/beans/PropertyAccessException;->propertyChangeEvent:Ljava/beans/PropertyChangeEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/beans/PropertyAccessException;->propertyChangeEvent:Ljava/beans/PropertyChangeEvent;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
