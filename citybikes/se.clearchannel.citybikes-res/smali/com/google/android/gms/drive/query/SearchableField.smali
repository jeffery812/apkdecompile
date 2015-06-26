.class public Lcom/google/android/gms/drive/query/SearchableField;
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

.field public static final MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<",
            "Ljava/util/Date;",
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

.field public static final rM:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/OrderedMetadataField",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fh;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TITLE:Lcom/google/android/gms/drive/metadata/MetadataField;

    sget-object v0, Lcom/google/android/gms/internal/fh;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MIME_TYPE:Lcom/google/android/gms/drive/metadata/MetadataField;

    sget-object v0, Lcom/google/android/gms/internal/fh;->TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->TRASHED:Lcom/google/android/gms/drive/metadata/MetadataField;

    sget-object v0, Lcom/google/android/gms/internal/fh;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/CollectionMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/fi;->rM:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->rM:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    sget-object v0, Lcom/google/android/gms/internal/fh;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->STARRED:Lcom/google/android/gms/drive/metadata/MetadataField;

    sget-object v0, Lcom/google/android/gms/internal/fi;->rJ:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->MODIFIED_DATE:Lcom/google/android/gms/drive/metadata/OrderedMetadataField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
