.class Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;
.super Lcom/lenovo/scg/gallery3d/common/Entry;
.source "FileCache.java"


# annotations
.annotation runtime Lcom/lenovo/scg/gallery3d/common/Entry$Table;
    value = "files"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/common/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry$Columns;
    }
.end annotation


# static fields
.field public static final SCHEMA:Lcom/lenovo/scg/gallery3d/common/EntrySchema;


# instance fields
.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/scg/gallery3d/common/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public filename:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/scg/gallery3d/common/Entry$Column;
        value = "filename"
    .end annotation
.end field

.field public hashCode:J
    .annotation runtime Lcom/lenovo/scg/gallery3d/common/Entry$Column;
        indexed = true
        value = "hash_code"
    .end annotation
.end field

.field public lastAccess:J
    .annotation runtime Lcom/lenovo/scg/gallery3d/common/Entry$Column;
        indexed = true
        value = "last_access"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/lenovo/scg/gallery3d/common/Entry$Column;
        value = "size"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/EntrySchema;

    const-class v1, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;->SCHEMA:Lcom/lenovo/scg/gallery3d/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/common/Entry;-><init>()V

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/common/FileCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/common/FileCache$1;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hash_code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;->hashCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;->lastAccess:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/FileCache$FileEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
