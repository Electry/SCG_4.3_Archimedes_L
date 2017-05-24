.class public final enum Lcn/jingling/lib/camera/DelayCap$DelayLevel;
.super Ljava/lang/Enum;
.source "DelayCap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/DelayCap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DelayLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jingling/lib/camera/DelayCap$DelayLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/jingling/lib/camera/DelayCap$DelayLevel;

.field public static final enum LONG:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

.field public static final enum MIDDLE:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

.field public static final enum SHORT:Lcn/jingling/lib/camera/DelayCap$DelayLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/camera/DelayCap$DelayLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->SHORT:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    new-instance v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcn/jingling/lib/camera/DelayCap$DelayLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->MIDDLE:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    new-instance v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcn/jingling/lib/camera/DelayCap$DelayLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->LONG:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    sget-object v1, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->SHORT:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->MIDDLE:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->LONG:Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->ENUM$VALUES:[Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jingling/lib/camera/DelayCap$DelayLevel;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    return-object v0
.end method

.method public static values()[Lcn/jingling/lib/camera/DelayCap$DelayLevel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/jingling/lib/camera/DelayCap$DelayLevel;->ENUM$VALUES:[Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    array-length v1, v0

    new-array v2, v1, [Lcn/jingling/lib/camera/DelayCap$DelayLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
