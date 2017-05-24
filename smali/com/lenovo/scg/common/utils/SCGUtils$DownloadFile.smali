.class public Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;
.super Ljava/lang/Object;
.source "SCGUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/SCGUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadFile"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field fileSize:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
