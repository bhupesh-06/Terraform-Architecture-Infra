# ---- root/main.tf

module "vpc" {
  source   = "./vpc"
  vpc_cidr = "192.168.0.0/16"
  ext_ip   = "0.0.0.0/0"
  pb_cidrs = ["192.168.1.0/24", "192.168.2.0/24"]
}

module "ec2" {
  source = "./ec2"
  kp_pb_sg  = module.vpc.kp_pb_sg
  kp_pb_sn  = module.vpc.kp_pb_sn
  key    = "id_rsa.pub"
  #pt_sg  = module.vpc.pt_sg
  #pt_sn  = module.vpc.pt_sn
  #alb_tg = module.lb.alb_tg
}