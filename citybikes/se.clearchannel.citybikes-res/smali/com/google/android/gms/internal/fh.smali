.class public Lcom/google/android/gms/internal/fh;
.super Ljava/lang/Object;


# static fields
.field public static final MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/CollectionMetadataField",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final rG:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final rH:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final rI:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fj;->rN:Lcom/google/android/gms/internal/fj;

    sput-object v0, Lcom/google/android/gms/internal/fh;->rG:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/StringMetadataField;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/StringMetadataField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/StringMetadataField;

    const-string v1, "mimeType"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/StringMetadataField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "starred"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/internal/fh$1;

    const-string v1, "trashed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fh$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "isEditable"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->rH:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    const-string v1, "isPinned"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->rI:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/e;

    const-string v1, "parents"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/fh;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;

    return-void
.end method
