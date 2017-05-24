.class public Lcom/lenovo/scg/monitor/MonitorService$SCGBinder;
.super Landroid/os/Binder;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/monitor/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCGBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/monitor/MonitorService;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/monitor/MonitorService;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$SCGBinder;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/lenovo/scg/monitor/MonitorService;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService$SCGBinder;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    return-object v0
.end method
