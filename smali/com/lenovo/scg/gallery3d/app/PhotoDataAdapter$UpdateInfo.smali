.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public contentEnd:I

.field public contentStart:I

.field public indexHint:I

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

.field public reloadContent:Z

.field public size:I

.field public target:Lcom/lenovo/scg/gallery3d/data/Path;

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$1;

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$UpdateInfo;-><init>()V

    return-void
.end method