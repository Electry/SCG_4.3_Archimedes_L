.class Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public reloadCount:I

.field public reloadStart:I

.field public size:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
