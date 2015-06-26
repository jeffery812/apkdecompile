.class Lorg/springframework/util/CollectionUtils$EnumerationIterator;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/util/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumerationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lorg/springframework/util/CollectionUtils$EnumerationIterator;,"Lorg/springframework/util/CollectionUtils$EnumerationIterator<TE;>;"
    .local p1, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lorg/springframework/util/CollectionUtils$EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    .line 361
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 364
    .local p0, this:Lorg/springframework/util/CollectionUtils$EnumerationIterator;,"Lorg/springframework/util/CollectionUtils$EnumerationIterator<TE;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, this:Lorg/springframework/util/CollectionUtils$EnumerationIterator;,"Lorg/springframework/util/CollectionUtils$EnumerationIterator<TE;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$EnumerationIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 372
    .local p0, this:Lorg/springframework/util/CollectionUtils$EnumerationIterator;,"Lorg/springframework/util/CollectionUtils$EnumerationIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
