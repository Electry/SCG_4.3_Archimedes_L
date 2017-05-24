.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/UserInfoServiceImpl;
.super Ljava/lang/Object;
.source "UserInfoServiceImpl.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/materialCenter/material/service/UserInfoService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uId"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "backgroundId"    # Ljava/lang/String;
    .param p4, "pro1"    # Ljava/lang/String;
    .param p5, "pro2"    # Ljava/lang/String;
    .param p6, "pro3"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static/range {p1 .. p6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Connection_Util;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
