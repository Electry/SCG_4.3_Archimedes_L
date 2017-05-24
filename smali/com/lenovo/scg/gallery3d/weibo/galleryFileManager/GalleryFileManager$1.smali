.class Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$1;
.super Ljava/lang/Object;
.source "GalleryFileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/io/File;

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
