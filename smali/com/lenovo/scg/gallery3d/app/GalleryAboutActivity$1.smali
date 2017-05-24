.class Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$1;
.super Ljava/lang/Object;
.source "GalleryAboutActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$000(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    mul-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 164
    return-void
.end method
