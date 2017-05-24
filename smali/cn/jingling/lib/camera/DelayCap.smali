.class public Lcn/jingling/lib/camera/DelayCap;
.super Lcn/jingling/lib/camera/WonderCamCap;
.source "DelayCap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/DelayCap$DelayLevel;,
        Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;
    }
.end annotation


# static fields
.field private static final DELAY_LONG:I = 0xa

.field private static final DELAY_MIDDLE:I = 0x5

.field private static final DELAY_SHORT:I = 0x3


# instance fields
.field private mDelay:I

.field private mListener:Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderCamCap;-><init>(Landroid/os/Handler;)V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/camera/DelayCap;)Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/jingling/lib/camera/DelayCap;->mListener:Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;

    return-object v0
.end method


# virtual methods
.method public setDelayLevel(Lcn/jingling/lib/camera/DelayCap$DelayLevel;)V
    .locals 2
    .param p1, "level"    # Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    .prologue
    const/4 v1, 0x3

    .line 40
    sget-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->SHORT:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iput v1, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->MIDDLE:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->LONG:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    goto :goto_0

    .line 47
    :cond_2
    iput v1, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    goto :goto_0
.end method

.method public setOnDelayCapListener(Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;)V
    .locals 0
    .param p1, "l"    # Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/jingling/lib/camera/DelayCap;->mListener:Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;

    .line 37
    return-void
.end method

.method public takePicture()V
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Lcn/jingling/lib/camera/DelayCap;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jingling/lib/camera/DelayCap$1;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/DelayCap$1;-><init>(Lcn/jingling/lib/camera/DelayCap;)V

    .line 60
    iget v2, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delay"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jingling/lib/camera/DelayCap;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 63
    return-void
.end method
