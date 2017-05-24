.class public Lcn/jingling/lib/filters/detection/FaceDetectorResults;
.super Ljava/lang/Object;
.source "FaceDetectorResults.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e09c3690078535aL


# instance fields
.field public humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/Point;
    .param p2, "right"    # Landroid/graphics/Point;
    .param p3, "mouth"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    iput-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    .line 40
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    new-instance v1, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    invoke-direct {v1}, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;-><init>()V

    aput-object v1, v0, v2

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v0, v0, v2

    iput-object p1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->leftEye:Landroid/graphics/Point;

    .line 42
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v0, v0, v2

    iput-object p2, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->rightEye:Landroid/graphics/Point;

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v0, v0, v2

    iput-object p3, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->mouth:Landroid/graphics/Point;

    .line 44
    iget-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Lcn/jingling/lib/utils/MathUtils;->dist(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;->eyeDistance:I

    .line 45
    return-void
.end method


# virtual methods
.method public copy(Lcn/jingling/lib/filters/detection/FaceDetectorResults;)V
    .locals 1
    .param p1, "result"    # Lcn/jingling/lib/filters/detection/FaceDetectorResults;

    .prologue
    .line 48
    iget-object v0, p1, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    iput-object v0, p0, Lcn/jingling/lib/filters/detection/FaceDetectorResults;->humans:[Lcn/jingling/lib/filters/detection/FaceDetectorResults$Human;

    .line 49
    return-void
.end method
