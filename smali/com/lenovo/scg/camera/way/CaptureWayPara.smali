.class public Lcom/lenovo/scg/camera/way/CaptureWayPara;
.super Ljava/lang/Object;
.source "CaptureWayPara.java"


# instance fields
.field private mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

.field private mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/CaptureListener;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureListener"    # Lcom/lenovo/scg/camera/mode/CaptureListener;
    .param p3, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayPara;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/lenovo/scg/camera/way/CaptureWayPara;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    .line 23
    iput-object p3, p0, Lcom/lenovo/scg/camera/way/CaptureWayPara;->mPreferences:Landroid/content/SharedPreferences;

    .line 24
    return-void
.end method


# virtual methods
.method public getCaptureListener()Lcom/lenovo/scg/camera/mode/CaptureListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayPara;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayPara;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayPara;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method
