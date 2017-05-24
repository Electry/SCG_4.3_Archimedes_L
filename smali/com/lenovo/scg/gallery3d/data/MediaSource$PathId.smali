.class public Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathId"
.end annotation


# instance fields
.field public id:I

.field public path:Lcom/lenovo/scg/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "id"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 68
    iput p2, p0, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->id:I

    .line 69
    return-void
.end method
