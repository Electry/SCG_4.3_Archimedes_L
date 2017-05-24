.class Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public cover:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field public index:I

.field public item:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field public size:I

.field public totalCount:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
