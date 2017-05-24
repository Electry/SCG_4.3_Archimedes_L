.class public final enum Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;
.super Ljava/lang/Enum;
.source "CLeImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeImageJI/CLeImageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eEncodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

.field public static final enum NotSupport:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

.field public static final enum jpeg:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

.field public static final enum png:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    const-string v1, "NotSupport"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->NotSupport:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    .line 31
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    const-string v1, "jpeg"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->jpeg:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    .line 34
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    const-string/jumbo v1, "png"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->png:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->NotSupport:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->jpeg:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->png:Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->$VALUES:[Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeImageJI/CLeImageEncoder$eEncodeType;

    return-object v0
.end method
