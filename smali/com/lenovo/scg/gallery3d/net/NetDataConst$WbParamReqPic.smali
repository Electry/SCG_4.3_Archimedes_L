.class public Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;
.super Ljava/lang/Object;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WbParamReqPic"
.end annotation


# instance fields
.field public mode:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

.field public sUrlLarge:Ljava/lang/String;

.field public sUrlMiddle:Ljava/lang/String;

.field public sUrlSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_AUTO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->mode:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    .line 92
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlSmall:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlMiddle:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sSmall"    # Ljava/lang/String;
    .param p2, "sMiddle"    # Ljava/lang/String;
    .param p3, "sLarge"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;->MODE_AUTO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->mode:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumWbPicGetMode;

    .line 92
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlSmall:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlMiddle:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlSmall:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlMiddle:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamReqPic;->sUrlLarge:Ljava/lang/String;

    .line 88
    return-void
.end method
