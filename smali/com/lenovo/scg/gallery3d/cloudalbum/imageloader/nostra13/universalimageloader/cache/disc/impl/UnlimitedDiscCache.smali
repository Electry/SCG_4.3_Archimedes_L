.class public Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.source "UnlimitedDiscCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 36
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 45
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 50
    return-void
.end method
