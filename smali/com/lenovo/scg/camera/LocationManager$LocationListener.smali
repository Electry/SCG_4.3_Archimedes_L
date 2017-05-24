.class Lcom/lenovo/scg/camera/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/LocationManager;Ljava/lang/String;)V
    .locals 2
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mValid:Z

    .line 136
    iput-object p2, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 138
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    # getter for: Lcom/lenovo/scg/camera/LocationManager;->mListener:Lcom/lenovo/scg/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/LocationManager;->access$000(Lcom/lenovo/scg/camera/LocationManager;)Lcom/lenovo/scg/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    # getter for: Lcom/lenovo/scg/camera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/LocationManager;->access$100(Lcom/lenovo/scg/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    iget-object v1, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    # getter for: Lcom/lenovo/scg/camera/LocationManager;->mListener:Lcom/lenovo/scg/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/LocationManager;->access$000(Lcom/lenovo/scg/camera/LocationManager;)Lcom/lenovo/scg/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/lenovo/scg/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_2

    .line 152
    const-string v0, "LocationManager"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 155
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mValid:Z

    .line 165
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->mValid:Z

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    # getter for: Lcom/lenovo/scg/camera/LocationManager;->mListener:Lcom/lenovo/scg/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/LocationManager;->access$000(Lcom/lenovo/scg/camera/LocationManager;)Lcom/lenovo/scg/camera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    # getter for: Lcom/lenovo/scg/camera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/LocationManager;->access$100(Lcom/lenovo/scg/camera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/LocationManager$LocationListener;->this$0:Lcom/lenovo/scg/camera/LocationManager;

    # getter for: Lcom/lenovo/scg/camera/LocationManager;->mListener:Lcom/lenovo/scg/camera/LocationManager$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/LocationManager;->access$000(Lcom/lenovo/scg/camera/LocationManager;)Lcom/lenovo/scg/camera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
