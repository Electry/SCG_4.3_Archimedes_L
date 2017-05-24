.class public Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
.super Ljava/lang/Object;
.source "FaceDetectorResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/filters/detection/FaceDetectorResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Human"
.end annotation


# instance fields
.field public eyeDistance:I

.field public face:Landroid/graphics/Rect;

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rightEye:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
