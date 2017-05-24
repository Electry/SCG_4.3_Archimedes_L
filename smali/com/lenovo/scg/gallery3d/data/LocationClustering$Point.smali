.class Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
.super Ljava/lang/Object;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field public latRad:D

.field public lngRad:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 59
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 60
    return-void
.end method
