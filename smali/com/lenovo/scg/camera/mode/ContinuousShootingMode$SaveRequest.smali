.class Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
.super Ljava/lang/Object;
.source "ContinuousShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field data:[B

.field height:I

.field id:I

.field lTimeTaken:J

.field loc:Landroid/location/Location;

.field orientation:I

.field thumbnailWidth:I

.field title:Ljava/lang/String;

.field uri:Landroid/net/Uri;

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;-><init>()V

    return-void
.end method
