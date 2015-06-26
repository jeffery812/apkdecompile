.class public abstract Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
.super Lcom/google/android/gms/drive/metadata/MetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Lcom/google/android/gms/drive/metadata/MetadataField",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldName"

    .prologue
    .local p0, this:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;,"Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/metadata/MetadataField;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;,"Lcom/google/android/gms/drive/metadata/OrderedMetadataField<TT;>;"
    .local p2, dataHolderFieldNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/MetadataField;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method
